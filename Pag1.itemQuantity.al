page 50001 itemQuantity
{

    PageType = List;
    SourceTable = itemQuantity;
    Caption = 'itemQuantity';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Item; Item)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
