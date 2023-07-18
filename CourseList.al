page 50103 "Course List"
{
    PageType = List;
    Editable = false;
    CardPageId = "Course Card";

    UsageCategory = Administration;
    SourceTable = "Course Management";
    Caption = 'Course Details';
    
    AboutText = 'Course details found here';
    AboutTitle = 'Course details';


    layout
    {
        area(Content)
        {
            repeater(Course)
            {
                Caption = 'Course';
                 field(Code;Rec.Code)
                {
                    ApplicationArea = all;
                    
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                    
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                
                
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}