/// <summary>
/// Page BET TA Posed Hotel Invoices (ID 64808).
/// </summary>
page 64808 "BET TA Posed Hotel Invoices"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Posed Hotel Invoices';
    SourceTable = "BET TA Post. Hotel Sal. Header";
    Editable = false;
    CardPageId = "BET TA Posted Hotel Invoice";

    layout
    {
        area(Content)
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
                field("Closed By"; Rec."Closed By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed By field.';
                }
                field("Closing DateTime"; Rec."Closing DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed Date and Time field.';
                }
            }
        }
    }
}