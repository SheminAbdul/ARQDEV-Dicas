codeunit 50101 "Phone Number"
{
    TableNo = Customer;

    [EventSubscriber(ObjectType::Table, database::Customer, 'OnAfterValidateEvent', 'Phone No.', false, false)]

    local procedure OnAfterValidateEvent_PhoneNo(var Rec: Record Customer; var xRec: Record Customer; CurrFieldNo: Integer);
    var
        TheNotification: Notification;
    begin
        if Rec."Phone No." = '' then begin
            TheNotification.Message('Please insert Phone No');
            TheNotification.SCOPE := NOTIFICATIONSCOPE::LocalScope;
            TheNotification.Send();

        end;
    end;
}


