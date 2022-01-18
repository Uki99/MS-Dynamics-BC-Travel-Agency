/// <summary>
/// Table BET TA Arrangement (ID 64803).
/// </summary>
table 64803 "BET TA Arrangement"
{
    DataClassification = CustomerContent;
    LookupPageId = "BET TA Arrangement List";
    DrillDownPageId = "BET TA Arrangement List";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';
        }
        field(2; "Destination ID"; Integer)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Destination ID';
            TableRelation = "BET TA Destination";

            trigger OnValidate()
            begin
                ValidateDestination();
            end;
        }
        field(3; Destination; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Destination';
            Editable = false;
        }
        field(4; "Hotel ID"; Integer)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Hotel ID';
            TableRelation =
            if ("Destination ID" = const(0)) "BET TA Hotel"
            else
            "BET TA Hotel" where("Destination ID" = field("Destination ID"));

            NotBlank = true;

            trigger OnValidate()
            begin
                ValidateHotel();
            end;
        }
        field(5; Hotel; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Hotel';
            Editable = false;
        }
        field(6; "Booking Type"; Integer)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Booking Type';
            TableRelation = "BET TA Booking Type";
        }
        field(7; "Days of stay"; Integer)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Days of stay';
            InitValue = 1;
            NotBlank = true;
        }
        field(8; Price; Decimal)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Price';
            NotBlank = true;
        }
        field(9; Name; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Name';
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
        fieldgroup(DropDown; "No.", Name, Destination, Hotel, "Booking Type", "Days of stay", Price)
        {
        }
        fieldgroup(Brick; "No.", Name, Destination, Hotel, "Booking Type", "Days of stay", Price)
        {
        }
    }

    var
        DestinationTok: Label '%1, %2', Comment = '%1 is destination city, %2 is destination country';
        HotelTok: Label '%1', Comment = '%1 is hotel name';

    local procedure ValidateDestination()
    var
        BETTADestination: Record "BET TA Destination";
    begin
        BETTADestination.Get(Rec."Destination ID");
        Rec.Destination := StrSubstNo(DestinationTok, BETTADestination.City, Format(BETTADestination.Country));
    end;

    local procedure ValidateHotel()
    var
        BETTAHotels: Record "BET TA Hotel";
    begin
        BETTAHotels.Get(Rec."Hotel ID");
        Rec.Hotel := StrSubstNo(HotelTok, BETTAHotels.Name);
        Rec.Destination := BETTAHotels.Destination;
        Rec."Destination ID" := BETTAHotels."Destination ID";
    end;
}