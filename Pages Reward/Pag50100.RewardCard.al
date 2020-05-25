page 50100 RewardCard
{

    PageType = Card;
    SourceTable = Reward;
    Caption = 'Reward';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
