/// <summary>
/// Table BET TA Post. Hotel Sal. Header (ID 64806).
/// </summary>
table 64806 "BET TA Post. Hotel Sal. Header"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "BET TA Posed Hotel Invoices";
    LookupPageId = "BET TA Posed Hotel Invoices";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            Caption = 'No.';
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer."No.";
        }
        field(3; "Sell-to Customer Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Sell-to Customer Name';
            TableRelation = Customer."No.";
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
        }
        field(6; Price; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Price';
        }
        field(7; "Document Status"; Enum "BET TA Document Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Document Status';
        }
        field(8; "Created By"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Created By';
        }
        field(9; "Created Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Created Date';
        }
        field(10; "Closed By"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Closed By';
        }
        field(11; "Closing DateTime"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Closed Date and Time';
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
        fieldgroup(DropDown; "No.", "Sell-to Customer Name", "Date of Sale", Price, "Created By", "Created Date", "Closed By", "Closing DateTime")
        {
        }
        fieldgroup(Brick; "No.", "Sell-to Customer Name", "Date of Sale", Price, "Created By", "Created Date", "Closed By", "Closing DateTime")
        {
        }
    }
}