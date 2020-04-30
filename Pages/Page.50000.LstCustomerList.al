page 50000 "LstCustomerList"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = LstCustomer;

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }

                field(CustomerNo; CustomerNo)
                {
                    ApplicationArea = All;
                }
                field(CustomerName; CustomerName)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field(optiontype; optiontype)
                {
                    ApplicationArea = All;
                }
                field(QtySalesOrderInvoice; QtySalesOrderInvoice)
                {
                    ApplicationArea = All;
                }
            }
        }

    }
}
