/*
report 50000 reportteste
{
    DefaultLayout = RDLC;
    RDLCLayout = './reportteste.rdlc';

    dataset
    {
        dataitem(DataItem1;Table18)
        {
            dataitem(DataItem2;Table36)
            {
                DataItemLink = Sell-to Customer No.=FIELD(No.);
                dataitem(DataItem3;Table37)
                {
                    DataItemLink = Document Type=FIELD(Document Type),
                                   Sell-to Customer No.=FIELD(Sell-to Customer No.),
                                   Document No.=FIELD(No.);
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
        label01 = 'label1';
        label02 = 'label2';
    }
}

*/