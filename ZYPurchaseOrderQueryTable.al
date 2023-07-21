table 50106 ZYPurchaseOrderQueryTable
{
    DataClassification = CustomerContent;
    TableType = Temporary;
    
    fields
    {
        field(1;RowNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Row No.';
            
        }
        field(10; "Buy-From Vendor No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Buy-From Vendor No.';
        }
        field(20; "Buy-From Vendor Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Buy-From Vendor Name';
        }
        field(30; "Order Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Order Date';
        }
        field(40; "Currency Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(50; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(60; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(70; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            DecimalPlaces = 0: 5;
        }
        field(80; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
            AutoFormatType = 1;
        }
        field(90; Inventory; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Inventory';
            DecimalPlaces = 0: 5;
        }
        field(100;"Amount Including VAT";Decimal){
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption='Amount Including VAT';
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(PK; RowNo)
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