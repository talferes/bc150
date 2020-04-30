table 50002 itemquantity2
{
    Caption = 'itemquantity2';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; itemNo; Code[20])
        {
            Caption = 'itemNo';
            DataClassification = ToBeClassified;
        }
        field(2; itemName; Text[80])
        {
            Caption = 'itemName';
            FieldClass = FlowField;
            CalcFormula = lookup (Item.Description where("No." = field(itemNo)));
            //DataClassification = ToBeClassified;

        }
        field(3; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; itemNo)
        {
            Clustered = true;
        }
    }

}
