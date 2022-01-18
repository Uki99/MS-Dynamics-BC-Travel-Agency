/// <summary>
/// Permissionset BET TA Hotel Perm. (ID 64800).
/// </summary>
permissionset 64801 "BET TA Hotel Perm."
{
    Assignable = true;
    Caption = 'Hotel Permission Set AllAccess', MaxLength = 30;
    Permissions =
        table "BET TA Booking Type" = X,
        tabledata "BET TA Booking Type" = RMID,
        table "BET TA Post. Hotel Sal. Header" = X,
        tabledata "BET TA Post. Hotel Sal. Header" = RMID,
        table "BET TA Arrangement" = X,
        tabledata "BET TA Arrangement" = RMID,
        table "BET TA Hotel Sales Header" = X,
        tabledata "BET TA Hotel Sales Header" = RMID,
        table "BET TA Destination" = X,
        tabledata "BET TA Destination" = RMID,
        table "BET TA Hotel" = X,
        tabledata "BET TA Hotel" = RMID,
        table "BET TA Hotel Sales Line" = X,
        tabledata "BET TA Hotel Sales Line" = RMID,
        table "BET TA Posted Hotel Sales Line" = X,
        tabledata "BET TA Posted Hotel Sales Line" = RMID,
        page "BET TA Booking Type List" = X,
        page "BET TA Hotel Sales Order" = X,
        page "BET TA Hotel Sales Orders" = X,
        page "BET TA Hotel Sal. Ord. Subform" = X,
        page "BET TA Hot. Post. Inv. Subform" = X,
        page "BET TA Posed Hotel Invoices" = X,
        page "BET TA Posted Hotel Invoice" = X,
        page "BET TA Arrangement List" = X,
        page "BET TA Arrangement" = X,
        page "BET TA Destination List" = X,
        page "BET TA Hotel List" = X;
}