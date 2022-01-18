/// <summary>
/// Table BET TA Hotel (ID 64802).
/// </summary>
table 64802 "BET TA Hotel"
{
    DataClassification = OrganizationIdentifiableInformation;
    LookupPageId = "BET TA Hotel List";
    DrillDownPageId = "BET TA Hotel List";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';
        }
        field(2; Name; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Name';
        }
        field(3; "Destination ID"; Integer)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Destination ID';
            TableRelation = "BET TA Destination";

            trigger OnValidate()
            begin
                ValidateDestination();
            end;
        }
        field(4; Destination; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Destination';
            Editable = false;
        }
        field(5; "Additional Description"; Text[250])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Additional Description';
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
        fieldgroup(DropDown; "No.", Name, Destination)
        {
        }
        fieldgroup(Brick; "No.", Name, Destination)
        {
        }
    }

    var
        DestinationTok: Label '%1, %2', Comment = '%1 is destination city, %2 is destination country';

    local procedure ValidateDestination()
    var
        BETTADestination: Record "BET TA Destination";
    begin
        BETTADestination.Get(Rec."Destination ID");
        Rec.Destination := StrSubstNo(DestinationTok, BETTADestination.City, Format(BETTADestination.Country));
    end;
}