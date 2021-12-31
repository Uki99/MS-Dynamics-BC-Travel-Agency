/// <summary>
/// PageExtension BET TA TestPageExt (ID 1000000) extends Record Customer List.
/// </summary>
pageextension 1000000 "BET TA TestPageExt" extends "Customer List"
{
    trigger OnOpenPage()
    begin
        Message('Hello there!');
    end;
}