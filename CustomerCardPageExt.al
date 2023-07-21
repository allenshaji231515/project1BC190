pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast("Address & Contact")
        {
            field(Facebook;Rec.Facebook){
                ApplicationArea =All;
            }
            field(Instagram;Rec.Instagram){
                ApplicationArea =All;
                AboutTitle = 'Testing text';
            }
            field(Twitter;Rec.Twitter){
                ApplicationArea =All;
            }
            field(LinkedIn;Rec.LinkedIn){
                ApplicationArea =All;
            }
        }
        moveafter(Address;"No.",Name)
        modify(Name){
            Caption = 'Nametest';
            
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}