table 50105 "Course Management"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(20; "Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Instructor Led","E-Learning","Remote Training";
        }
        field(50; "Duration"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        
        field(60; "Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70; "Active"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(80; "Difficulty"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(90; "Passing Rate"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(100; "Intructor Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation ="Resource" Where (Type=CONST(Person));
        }
    }
    
    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(SecondaryKey1; "Intructor Code")
        {
           
        }
        key(SecondaryKey2; "Type")
        {
            
        }
    }
    
    
    
}