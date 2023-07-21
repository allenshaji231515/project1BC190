report 50100 CustomerList
{
    Caption = 'Customer List Report';
    RDLCLayout = 'layouts/CustomerList.rdl';
    WordLayout = 'layouts/CustomerList.docx';
    //PreviewMode = PrintLayout;
    PreviewMode =Normal;
    WordMergeDataItem = Customer;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting(Name);
            column(No; "No.")
            {

            }
            column(Name; Name)
            {
                
            }
            column(Balance; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

   

    var
        myInt: Integer;
}