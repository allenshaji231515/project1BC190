pageextension 50110 ItemCardExt extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addafter(Functions){
            action(ImportItemPicture){
                Caption ='Import Item Picture';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = all;
                trigger OnAction()
                var
                    ImageManagement : Codeunit "File Stream Code";
                begin
                    ImageManagement.importImage(Rec);
                end;
            }
            action(ExportItemPicture){
                Caption ='Export Item Picture';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = all;
                trigger OnAction()
                var
                    ImageManagement : Codeunit "File Stream Code";
                begin
                    ImageManagement.exportImage(Rec);
                end;
            }
        }
        
        
    }
    
    var
        myInt: Integer;
}