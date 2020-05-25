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

                if (Rec."Reward ID" <> xRec."Reward ID") AND (Rec.Blocked <> Blocked::" ") then begin

                    Error('Cannot update the rewards status of a blocked customer');
                end;

            end;

        }
    }
}

