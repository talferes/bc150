report 50002 teste
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'teste.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(LstCustomer; LstCustomer)
        {
            column(CustomerNo; CustomerNo)
            {

            }
            column(CustomerName; CustomerName)
            {

            }
        }
    }
}