codeunit 50100 "File Stream Code"
{
   
    
    var
        myInt: Integer;
        item : Record Item;

    

     procedure importImage(item: Record Item)
    var
        myInt: Integer;
        
        PicInStream : InStream;
        FromFileName : Text;
        OverrideImageQST: Label 'The existing image will be replaced, do you want to continue?', MaxLength=250, Locked=false;
    begin
        with item do
        begin
            if Picture.Count > 0 then
                if not Confirm(OverrideImageQST) then exit;
            if UploadIntoStream('Import','','All Files(*.*)|*.*',FromFileName,PicInStream) then
            begin
                Clear(Picture);
                Picture.ImportStream(PicInStream,FromFileName);
                Modify(true);
            end;
            
        end; 
    end;

    procedure exportImage(item: Record Item)
    var
        PicInStream: InStream;
        Index: Integer;
        TenantMedia: Record "Tenant Media";
        FileName: Text;
    begin
        with item do
        begin
            if Picture.Count = 0 then exit;

            for Index := 1 to Picture.Count do begin
                if TenantMedia.Get(Picture.Item(Index)) then begin
                    TenantMedia.CalcFields(Content);
                    if TenantMedia.Content.HasValue then begin
                        FileName:= TableCaption + '_image'+Format(Index)+ GetTenantMediaExtension(TenantMedia);
                        Message( GetTenantMediaExtension(TenantMedia));
                        TenantMedia.Content.CreateInStream(PicInStream);
                        DownloadFromStream(PicInStream,'','','',FileName);

                    end;
                end;
            end;
            
        end;
        
    end;

    //png,bmp,gif,tiff,wmf
    local procedure GetTenantMediaExtension(var TenantMedia : Record "Tenant Media"): Text
    
       
    begin
        case TenantMedia."Mime Type" of 
            'image/jpeg' : exit('.jpg');
            'image/png' : exit('.png');
            'image/bmp' : exit('.bmp');
            'image/tiff' : exit('.tiff');
            'image/wmf' : exit('.wmf');
        end;

    end;
}