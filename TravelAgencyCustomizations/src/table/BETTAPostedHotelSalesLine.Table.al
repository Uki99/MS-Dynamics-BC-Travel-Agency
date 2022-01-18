/// <summary>
/// Table BET TA Posted Hotel Sales Line (ID 64807).
/// </summary>
table 64807 "BET TA Posted Hotel Sales Line"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "BET TA Hot. Post. Inv. Subform";
    LookupPageId = "BET TA Hot. Post. Inv. Subform";

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = SystemMetadata;
            Editable = false;
            Caption = 'No.';
        }
        field(2; "Document No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
        }
        field(3; "Traveller Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Traveller Name';
        }
        field(4; "Traveller Surname"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Traveller Surname';
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Line No.", "Document No.", "Traveller Name", "Traveller Surname")
        {
        }
        fieldgroup(Brick; "Line No.", "Document No.", "Traveller Name", "Traveller Surname")
        {
        }
    }
}