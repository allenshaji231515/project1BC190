table 50100 "Course Table"
{
    DataClassification = ToBeClassified;

    Caption = 'Course Table';

    
    fields
    {
        field(50100; Sno; Code[12])
        {
            DataClassification = ToBeClassified;
            
        }
        field(50102; "Course Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Course Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "ILT", "FMAT", "ILO";
        }
        
        field(50104; "Instructor Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50105; "Opted by Students"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; "Sno","Course Name","Instructor Name")
        {
            Clustered = true;
        
        }
    }
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}