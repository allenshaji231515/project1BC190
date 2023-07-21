pageextension 50111 CustomerListPageExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addafter("&Customer"){
            
            action("Export to XML"){
                
            RunObject= xmlport "MyXmlPort";
            ApplicationArea = All;
            
            }
        }
    }
    
    var
        myInt: Integer;
}