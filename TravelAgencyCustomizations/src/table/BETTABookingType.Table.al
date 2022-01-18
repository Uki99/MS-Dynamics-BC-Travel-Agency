/// <summary>
/// Table BET TA Booking Type (ID 64800).
/// </summary>
table 64800 "BET TA Booking Type"
{
    DataClassification = OrganizationIdentifiableInformation;
    LookupPageId = "BET TA Booking Type List";
    DrillDownPageId = "BET TA Booking Type List";

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
            Editable = false;
            Caption = 'No.';
        }
        field(2; Type; Enum "BET TA Room Type")
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Room Type';
        }
        field(3; "Premium Service"; Boolean)
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Premium Service';
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
        fieldgroup(DropDown; "No.", Type, "Premium Service")
        {
        }
        fieldgroup(Brick; "No.", Type, "Premium Service")
        {
        }
    }
}