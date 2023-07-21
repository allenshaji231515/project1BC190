query 50103 MyQuery
{
    QueryType = Normal;
    OrderBy = descending(SumAmountLCY);
    TopNumberOfRows = 10;
    elements
    {
        dataitem(Customer; Customer)
        {
            
            
            
            dataitem(CustLedge; "Cust. Ledger Entry"){
                DataItemLink = "Customer No." = Customer."No.";
                DataItemTableFilter ="Document Type" = filter("Invoice"|"Credit Memo");
                column(No;"Customer No."){}
                column(Name;"Customer Name"){}
                column(PostingGrp; "Customer Posting Group"){}
                column(SumAmountLCY; "Amount (LCY)"){
                    
                }
                
                
            }
            
        }
    
    }
    
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}