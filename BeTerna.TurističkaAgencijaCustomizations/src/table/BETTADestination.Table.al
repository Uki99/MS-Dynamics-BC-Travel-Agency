/// <summary>
/// Table BET TA Destination (ID 64801).
/// </summary>
table 64801 "BET TA Destination"
{
    DataClassification = CustomerContent;
    LookupPageId = "BET TA Destination List";
    DrillDownPageId = "BET TA Destination List";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';
        }
        field(2; Country; Enum "BET TA Country")
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Country';
        }
        field(3; City; Text[100])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'City';
        }
        field(4; "Additional Description"; Text[250])
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
        fieldgroup(DropDown; "No.", City, Country)
        {
        }
        fieldgroup(Brick; "No.", City, Country)
        {
        }
    }
}