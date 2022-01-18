/// <summary>
/// Page BET TA Arrangement List (ID 64804).
/// </summary>
page 64804 "BET TA Arrangement List"
{
    ApplicationArea = All;
    Caption = 'Arrangement List';
    PageType = List;
    SourceTable = "BET TA Arrangement";
    CardPageId = "BET TA Arrangement";
    UsageCategory = Lists;
    Editable = false;

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
                field(Destination; Rec.Destination)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Destination field.';
                }
                field(Hotel; Rec.Hotel)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hotel field.';
                }
                field("Booking Type"; Rec."Booking Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Booking Type field.';
                }
                field("Days of stay"; Rec."Days of stay")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Days of stay field.';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
            }
        }
    }
}