report 50000 Reportlist
{
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = 'Mylist.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(LstCustomer; LstCustomer)
        {
            column(Reward_ID; "Reward ID")
            { }
            column(CustomerNo; CustomerNo)
            { }
            column(CustomerName; CustomerName)
            { }
            column(Quantity; Quantity)
            { }
            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "sell-to Customer No." = FiELD(CustomerNo);
                column(NoSalesHeader; "No.")
                { }
                dataitem("Sales Line"; "Sales Line")
                {
                    DataItemLink = "Document Type" = FiELD("Document Type"),
                    "Document No." = FIELD("No."),
                    "sell-to Customer No." = FiELD("sell-to Customer No.");
                    column(No_SalesLie; "No.")
                    { }
                    column(DescriptionSalesLine; Description)
                    { }
                }
            }
        }

    }
    labels
    {
        SalesHeaderCaption = 'Sales Order No.';
        ItemNoCaption = 'Item No.';

    }
}