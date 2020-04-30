table 50000 LstCustomer
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Reward ID"; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
            Editable = false;
            //ObsoleteState = Pending;
            //ObsoleteReason = 'Changed data type';

        }
        field(2; CustomerNo; code[20])
        {
            DataClassification = ToBeClassified;
            //TableRelation = Customer."No.";
            trigger OnValidate()
            begin
                // if GCustomer.Get(CustomerNo) then
                //     CustomerName := GCustomer.Name;
                /*
                GSalesOrder.SetRange("Document Type", GSalesOrder."Document Type"::Order);
                GSalesOrder.SetRange("Sell-to Customer No.", GCustomer."No.");
                if GSalesOrder.FindSet() then
                    Quantity := GSalesOrder.Count;
                */
            end;

        }
        field(3; CustomerName; Text[80])
        {
            DataClassification = ToBeClassified;

        }

        field(4; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; optiontype; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = ',report,reported';
            OptionMembers = ,report,reported;

        }
        field(6; QtySalesOrderInvoice; Integer)
        {
            DataClassification = ToBeClassified;
        }


    }
    var
    //GCustomer: Record Customer;
    //GSalesOrder: Record "Sales Header";


}
