/// <summary>
/// Page BET TA Hotel List (ID 64802).
/// </summary>
page 64802 "BET TA Hotel List"
{
    ApplicationArea = All;
    Caption = 'Hotel List';
    PageType = List;
    SourceTable = "BET TA Hotel";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Destination ID"; Rec."Destination ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Destination ID field.';
                }
                field(Destination; Rec.Destination)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Destination field.';
                }
                field("Additional Description"; Rec."Additional Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Additional Description field.';
                }
            }
        }
    }
}