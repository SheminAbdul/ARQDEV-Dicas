tableextension 50101 "Customer_EXT" extends "Customer"
{

    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            TableRelation = Reward."Reward ID";
            // ValidateTableRelation = true;

            trigger OnValidate();
            begin

                if (Rec.Blocked <> Blocked::" ") then begin

                    Error('Não pode atualizar dados num cliente bloqueado');
                end;

            end;

        }
    }
}

