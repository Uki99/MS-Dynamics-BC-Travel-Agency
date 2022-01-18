/// <summary>
/// Page BET TA Booking Type List (ID 64800).
/// </summary>
page 64800 "BET TA Booking Type List"
{
    ApplicationArea = All;
    Caption = 'Booking Type List';
    PageType = List;
    SourceTable = "BET TA Booking Type";
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
                field(Type; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Room Type field.';
                }
                field("Premium Service"; Rec."Premium Service")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Premium Service field.';
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