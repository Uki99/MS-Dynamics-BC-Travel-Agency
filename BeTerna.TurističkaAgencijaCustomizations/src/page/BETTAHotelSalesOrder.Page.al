/// <summary>
/// Page BET TA Hotel Sales Order (ID 64806).
/// </summary>
page 64806 "BET TA Hotel Sales Order"
{
    Caption = 'Hotel Sales Order';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "BET TA Hotel Sales Header";

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
                field("Date of Sale"; Rec."Date of Sale")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Sale field.';
                }
            }
            group(Details)
            {
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
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price field.';
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
            }
            group(Arrangement)
            {
                part("Sales Order Subform"; "BET TA Hotel Sal. Ord. Subform")
                {
                    ApplicationArea = All;
                    Enabled = Rec."Sell-to Customer No." <> '';
                    SubPageLink = "Document No." = field("No.");
                    UpdatePropagation = Both;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Arrangement Page")
            {
                ApplicationArea = All;
                Caption = 'Open Arrangement Page';
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                Image = TraceOppositeLine;
                RunObject = Page "BET TA Arrangement List";
                RunPageMode = View;
                ToolTip = 'Executes the Open Arrangement Page action.';
            }
        }
    }
}