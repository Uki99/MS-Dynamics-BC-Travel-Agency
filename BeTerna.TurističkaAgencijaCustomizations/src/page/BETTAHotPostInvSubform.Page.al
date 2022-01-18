/// <summary>
/// Page BET TA Hot. Post. Inv. Subform (ID 64810).
/// </summary>
page 64810 "BET TA Hot. Post. Inv. Subform"
{
    Caption = 'Hotel Invoice Subform';
    PageType = ListPart;
    SourceTable = "BET TA Posted Hotel Sales Line";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                    Editable = false;
                }
                field("Traveller Name"; Rec."Traveller Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Traveller Name field.';
                }
                field("Traveller Surname"; Rec."Traveller Surname")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Traveller Surname field.';
                }
            }
        }
    }
}