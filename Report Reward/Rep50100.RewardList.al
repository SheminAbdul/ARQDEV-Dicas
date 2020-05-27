report 50100 "Reward List"
{

    DefaultLayout = RDLC;
    RDLCLayout = 'RewardList.rdl';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Reward; Reward)
        {
            column(RewardID; "Reward ID")
            {
            }
            column(Description; Description)
            {
            }
            column(DiscountPercentage; "Discount Percentage")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
