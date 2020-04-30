/*codeunit 50003 SubcriverEvent
{

    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, 50000, 'OnAfterModifyEvent', '', false, false)]
    //local procedure CustomerOnAfterModifyEvent(var Rec: Record "18";var xRec: Record "18";RunTrigger: Boolean)
    local procedure CustomerOnAfterModifyEvent(var Rec: Record LstCustomer;var xRec: Record LstCustomer ;RunTrigger: Boolean)
    begin
        //MESSAGE(Rec.Name);
    end;
}

*/