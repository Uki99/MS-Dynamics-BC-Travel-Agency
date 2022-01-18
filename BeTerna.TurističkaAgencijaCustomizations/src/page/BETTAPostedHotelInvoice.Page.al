/// <summary>
/// Page BET TA Posted Hotel Invoice (ID 64809).
/// </summary>
page 64809 "BET TA Posted Hotel Invoice"
{
    Caption = 'Posted Hotel Invoice';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = History;
    SourceTable = "BET TA Post. Hotel Sal. Header";
    Editable = false;

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
                part("Posted Invoice Subform"; "BET TA Hot. Post. Inv. Subform")
                {
                    ApplicationArea = All;
                    SubPageLink = "Document No." = field("No.");
                    UpdatePropagation = Both;
                    Editable = false;
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