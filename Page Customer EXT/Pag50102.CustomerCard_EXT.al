pageextension 50102 "Customer Card_Ext" extends "Customer Card"
{
    layout
    {
        addafter(Blocked)
        {

            field("Reward ID"; "Reward ID")
            {

                ApplicationArea = All;
            }
        }
    }

}


