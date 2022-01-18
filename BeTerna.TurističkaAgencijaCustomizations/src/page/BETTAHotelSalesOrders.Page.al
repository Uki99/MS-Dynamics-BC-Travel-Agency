/// <summary>
/// Page BET TA Hotel Sales Orders (ID 64805).
/// </summary>
page 64805 "BET TA Hotel Sales Orders"
{
    ApplicationArea = All;
    Caption = 'Hotel Sales Orders';
    PageType = List;
    SourceTable = "BET TA Hotel Sales Header";
    UsageCategory = Lists;
    CardPageId = "BET TA Hotel Sales Order";

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
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to Customer Name field.';
                }
                field("Arrangement ID"; Rec."Arrangement ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Arrangement field.';
                }
                field("Document Status"; Rec."Document Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Status field.';
                }
                field("Date of Sale"; Rec."Date of Sale")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Sale field.';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                }
                field("Created Date"; Rec."Created Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created Date field.';
                }
            }
        }
    }
}