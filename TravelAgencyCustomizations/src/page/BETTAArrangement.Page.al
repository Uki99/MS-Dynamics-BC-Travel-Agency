/// <summary>
/// Page "BET TA Arrangement" (ID 64803).
/// </summary>
page 64803 "BET TA Arrangement"
{
    UsageCategory = Documents;
    ApplicationArea = All;
    Caption = 'Arrangement';
    PageType = Card;
    SourceTable = "BET TA Arrangement";

    layout
    {
        area(content)
        {
            group(General)
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
                field("Days of stay"; Rec."Days of stay")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Days of stay field.';
                }
                field("Booking Type"; Rec."Booking Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Booking Type field.';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price field.';
                }
            }
            group(Location)
            {
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
                field("Hotel ID"; Rec."Hotel ID")
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hotel field.';
                }
                field(Hotel; Rec.Hotel)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hotel field.';
                }
            }
        }
    }
}