codeunit 50000 Subscriber
{

    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, 50000, 'OnAfterModifyEvent', '', false, false)]
    //local procedure CustomerOnAfterModifyEvent(var Rec: Record "18";var xRec: Record "18";RunTrigger: Boolean)
    local procedure LstCustomer(var Rec: Record LstCustomer; var xRec: Record LstCustomer; RunTrigger: Boolean)
    begin
        MESSAGE(Rec.CustomerName);
    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnAfterModifyEvent', '', false, false)]
    local procedure Customer(var Rec: Record Customer; var xRec: Record Customer; RunTrigger: Boolean)
    begin
        Message('0');
    end;


    [EventSubscriber(ObjectType::Table, 50000, 'OnBeforeInsertEvent', '', false, false)]
    local procedure LstQty(var Rec: Record LstCustomer; RunTrigger: Boolean)
    var
        L_SalesHeader: Record "Sales Header";
    begin

        L_SalesHeader.RESET;
        L_SalesHeader.SetRange("Document Type", L_SalesHeader."Document Type"::Order);
        L_SalesHeader.SetRange("Sell-to Customer No.", Rec.CustomerNo);
        Rec.Quantity := L_SalesHeader.Count;


    end;


}
