/// <summary>
/// Table BET TA Hotel Sales Header (ID 64804).
/// </summary>
table 64804 "BET TA Hotel Sales Header"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "BET TA Hotel Sales Orders";
    LookupPageId = "BET TA Hotel Sales Orders";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer."No.";
            NotBlank = true;

            trigger OnValidate()
            begin
                ValidateCustomerNo();
            end;
        }
        field(3; "Sell-to Customer Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Sell-to Customer Name';
            TableRelation = Customer."No.";
            NotBlank = true;

            trigger OnValidate()
            begin
                ValidateCustomerName();
            end;
        }
        field(4; "Date of Sale"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Sale';
        }
        field(5; "Arrangement ID"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Arrangement';
            TableRelation = "BET TA Arrangement";
            NotBlank = true;

            trigger OnValidate()
            begin
                ValidateArrangement();
            end;
        }
        field(6; Price; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Price';
            Editable = false;
        }
        field(7; "Document Status"; Enum "BET TA Document Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Document Status';

            trigger OnValidate()
            begin
                CloseDocumentIfStatusClosed();
            end;
        }
        field(8; "Created By"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Created By';
            Editable = false;
        }
        field(9; "Created Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Created Date';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Sell-to Customer Name", "Date of Sale", Price, "Created By", "Created Date")
        {
        }
        fieldgroup(Brick; "No.", "Sell-to Customer Name", "Date of Sale", Price, "Created By", "Created Date")
        {
        }
    }

    var
        ConfirmClosingDocumentMsg: Label 'Do you want to mark this document as closed and archieve it?';
        AfterClosingDocumentNotificationMsg: Label 'Successfuly closed and archieved the document!';
        SalesLinesFindErr: Label 'Error: Couldn''t find any hotel sales lines under given document number';

    trigger OnInsert()
    begin
        Rec."Created Date" := Today();
        Rec."Created By" := CopyStr(UserId(), 1, MaxStrLen(Rec."Created By"));
    end;

    local procedure ValidateCustomerNo()
    var
        Customer: Record Customer;
    begin
        Customer.SetLoadFields(Name);
        Customer.Get(Rec."Sell-to Customer No.");
        Rec."Sell-to Customer Name" := Customer.Name;
    end;

    local procedure ValidateCustomerName()
    var
        Customer: Record Customer;
    begin
        Customer.SetLoadFields(Name);
        Customer.Get(Rec."Sell-to Customer Name");
        Rec."Sell-to Customer No." := Customer."No.";
        Rec."Sell-to Customer Name" := Customer.Name;
    end;

    local procedure ValidateArrangement()
    var
        BETTAArrangements: Record "BET TA Arrangement";
    begin
        BETTAArrangements.SetLoadFields(Price);
        BETTAArrangements.Get(Rec."Arrangement ID");
        Rec.Price := BETTAArrangements.Price;
    end;

    local procedure CloseDocumentIfStatusClosed()
    var
        BETTAPostHotelSalHeader: Record "BET TA Post. Hotel Sal. Header";
        BETTAPostedHotelSalesLine: Record "BET TA Posted Hotel Sales Line";
        BETTAHotelSalesLine: Record "BET TA Hotel Sales Line";
    begin
        if Rec."Document Status" <> Enum::"BET TA Document Status"::Closed then
            Exit;

        if not Confirm(ConfirmClosingDocumentMsg) then
            Error('');

        BETTAPostHotelSalHeader.Init();
        BETTAPostedHotelSalesLine.Init();

        BETTAPostHotelSalHeader.TransferFields(Rec);
        BETTAPostHotelSalHeader."Closed By" := CopyStr(UserId(), 1, MaxStrLen(BETTAPostHotelSalHeader."Closed By"));
        BETTAPostHotelSalHeader."Closing DateTime" := CurrentDateTime();
        BETTAPostHotelSalHeader.Insert(true);

        BETTAHotelSalesLine.SetRange("Document No.", "No.");
        if BETTAHotelSalesLine.FindSet(true, false) then
            repeat
                BETTAPostedHotelSalesLine.TransferFields(BETTAHotelSalesLine);
                BETTAPostedHotelSalesLine.Insert(true);
                BETTAHotelSalesLine.Delete(true);
            until BETTAHotelSalesLine.Next() = 0
        else
            Error(SalesLinesFindErr);

        Clear(BETTAPostHotelSalHeader);
        BETTAPostHotelSalHeader.Get(Rec."No.");
        Rec.Delete(true);
        Message(AfterClosingDocumentNotificationMsg);
        Page.Run(Page::"BET TA Posted Hotel Invoice", BETTAPostHotelSalHeader);
    end;
}