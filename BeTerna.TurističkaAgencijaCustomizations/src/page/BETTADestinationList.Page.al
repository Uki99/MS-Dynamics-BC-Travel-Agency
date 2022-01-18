/// <summary>
/// Page BET TA Destination List (ID 64801).
/// </summary>
page 64801 "BET TA Destination List"
{
    ApplicationArea = All;
    Caption = 'Destination List';
    PageType = List;
    SourceTable = "BET TA Destination";
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
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Country field.';
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