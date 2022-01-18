/// <summary>
/// Page BET TA Hotel Sal. Ord. Subform (ID 64807).
/// </summary>
page 64807 "BET TA Hotel Sal. Ord. Subform"
{
    Caption = 'Hotel Sales Order Subform';
    PageType = ListPart;
    SourceTable = "BET TA Hotel Sales Line";
    AutoSplitKey = true;

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