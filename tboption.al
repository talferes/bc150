/*table 50000 testeoption
{

    fields
    {
        field(1;int;Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2;opt;Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = ',a,b,c,,,,,d';
            OptionMembers = ,a,b,c,,,,,d;
        }
    }

    keys
    {
        key(Key1;int)
        {
        }
    }

    fieldgroups
    {
    }
}

*/