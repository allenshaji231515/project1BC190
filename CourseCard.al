page 50102 "Course Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Course Management";
    Caption = 'Course Table';
    PromotedActionCategories = 'New,Process,Report3,Test1,Test2,Test3';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                    Importance = Promoted;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                    Importance = Promoted;
                    AboutText = 'Testing text';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                    Importance = Standard;
                    AboutTitle = 'Testing title';
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = all;

                    Importance = Standard;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = all;
                    Importance = Standard;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = all;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = all;
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ApplicationArea = all;
                    AssistEdit = true;
                    Importance = Additional;


                    trigger OnAssistEdit()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(factboxes)
        {
            part(Control149; "Customer Picture")
            {
                ApplicationArea = Basic, Suite;
                Visible = true;
            }
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
            }
            part(Control147; "Customer Picture")
            {
                ApplicationArea = Basic, Suite;
                Visible = true;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Resource Card -P")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Category4;
                // PromotedIsBig = true;


                ApplicationArea = All;


            }
        }
        area(Navigation)
        {
            action("Resource Card - N")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Category5;
                // PromotedIsBig = true;


                ApplicationArea = All;


            }
        }
        area(Creation)
        {
            group(Testing)
            {

                action("Resource Card - D")
                {
                    RunObject = page "Resource Card";
                    RunPageLink = "No." = field("Instructor Code");
                    Image = Relationship;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;


                    ApplicationArea = All;


                }
            }

            action("Resource Card - E")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedIsBig = true;


                ApplicationArea = All;


            }
            action("Resource Card - C")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedIsBig = true;


                ApplicationArea = All;


            }
        }
        area(Reporting)
        {
            action("Resource Card - R")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Report;
                PromotedOnly = true;
                // PromotedIsBig = true;


                ApplicationArea = All;


            }
        }
    }


}