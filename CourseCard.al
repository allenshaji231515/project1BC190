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
    trigger OnOpenPage()
    var
        myInt: Integer;
        num1: Decimal;
        num2: Decimal;
        text1: Label 'FIrst answer %1 and second answer %2';
        text2: Label 'FIrst,Second';
        num3: Decimal;
        num4: Decimal;
        mytext: Text;
        color: Option green,blue,red;

        mycust: Record Customer;

        stringArray1: array[6] of Text;
        stringArray2: array[5, 4] of Text;
    begin

        stringArray1[4] := 'Name';
        stringArray2[2, 2] := 'Allen';
        stringArray2[2, 3] := 'Shaji';

        // Message('my %1 is %2 %3', stringArray1[4], stringArray2[2, 2], stringArray2[2, 3]);
        // Message('my %1 is %2 %3', stringArray1[4], stringArray2[2, 4], stringArray2[2, 4]);

        workWithListofCustomers();
        //Message('Fav color is %1',color);

        // mycust.SetRange("No.", '10000', '20000');

        // repeat
        //     Message('with from and to value %1',mycust.Name);
        // until mycust.Next() = 0;

        // mycust.SetRange("No.", '10000');

        // repeat
        //     Message('No to value %1',mycust.Name);
        // until mycust.Next() = 0;

        // mycust.SetRange("No.", '', '20000');

        // repeat
        //     Message('No from value %1',mycust.Name);
        // until mycust.Next() = 0;


        //  mycust.SetRange("No.", '10000', '');

        // repeat
        // Message('EMpty last value %1',mycust.Balance);
        // mycust.CalcFields(Balance,"Balance (LCY)");
        //     Message('EMpty last value %1',mycust.Balance);
        //     // Message('Calcfield %1',);
        // until mycust.Next() = 0

        // mycust.SetFilter(Name, '@B*');
        // mycust.FindFirst();
        // message('Customer name is %1', mycust.Name);
        // mycust.FindLast();
        // message('Customer name is %1', mycust.Name);

        // mycust.SetCurrentKey(City);
        // mycust.FindFirst();
        // message('Customer name is %1', mycust.Name);

        // num1 := 12;
        // num2 := 15;

        // num3 := 19.5;
        // num4 := 120;

        // myInt := num1 + num2;
        // num1 := num2 - num1;

        // message(text1, myInt, num2);
        // num2 := num1 * num2;
        // num1 := num4 / num3;
        // Message(text1, num2, num1);
        // num1 := num4 DIV num3;

        // num2 := num4 MOD num3;

        // Message(text1, num1, num2);


        //Conditional Statements

        //IF Statement

        // num1 := 10;

        // if num1 > 5 then begin
        //     num2 := 12;
        //     Message('Condition is true and num2 value is %1', num2);
        // end
        // else begin
        //     num2 := 24;
        //     Message('Condition is false and num2 value is %1', num2);
        // end;


        //CASE Statement

        // case num1 of
        //     3, 6, 10:
        //         Message('Value is in the first case');

        //     9 .. 15:
        //         Message('Value is also in the second case');

        //     else
        //         Message('Value is not in here');

        // end;


        //FOR Loop

        // for num1 := 1 to 5 do Message('Value %1', num1);

        // //While Statement
        // Message('Value of num1 %1', num1);
        // while num1<20 do
        // begin
        //     num1:= num1*3;
        //     Message('Value of num2 in while loop is %1', num1);
        // end;


        //xarray


    end;

    procedure workWithListofCustomers();
        var
        customerNames : List of [Text];

        customerDetails : Dictionary of [Code[10], List of [Text]];

        begin
            customerNames.Add('Jone');
            customerNames.Add('Jane');
            customerNames.Add('Mary');


            // if customerNames.Contains('Luke') then customerNames.Insert(2,'Luke')

            // else if customerNames.Contains('Jane') then customerNames.Reverse();

            // Message('Value of third index %1',customerNames.Get(2));

            customerDetails.Add('WPG',customerNames);
            if customerDetails.ContainsKey('WPG') then Message('%1 is in Winnipeg',customerDetails.get('WPG').Get(3));
        
        end;


}