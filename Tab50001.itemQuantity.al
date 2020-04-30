table 50001 itemQuantity
{
    Caption = 'itemQuantity';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Item; Code[20])
        {
            Caption = 'Item';
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";
        }
        field(2; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Item)
        {
            Clustered = true;
        }
    }

}
