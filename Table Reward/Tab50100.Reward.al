table 50100 "Reward"
{
    Caption = 'Reward';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reward ID"; Code[30])
        {
            Caption = 'Reward ID';
            DataClassification = ToBeClassified;

        }
        field(2; "Description"; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Discount Percentage"; Decimal)
        {
            Caption = 'Discount Percentage';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
            DecimalPlaces = 2;
        }

        field(4; "Last Modified Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    begin
        LastModifiedDate()
    end;

    trigger OnInsert()
    begin
        LastModifiedDate()
    end;

    trigger OnModify()
    begin
        LastModifiedDate()
    end;

    trigger OnRename()
    begin
        LastModifiedDate()
    end;

    Local procedure LastModifiedDate()
    begin
        "Last Modified Date" := Today;
    end;
}
