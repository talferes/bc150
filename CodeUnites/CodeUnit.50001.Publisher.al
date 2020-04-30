codeunit 50001 MyPublishers
{

    trigger OnRun()
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure PublisherLstCustomer(LstCustomer: Record LstCustomer)
    begin
        //MESSAGE('0');
    end;

    [IntegrationEvent(false, false)]
    local procedure PublisherCustomer(Customer: Record Customer)
    begin

    end;


}
