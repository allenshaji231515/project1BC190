tableextension 50110 MyExtension extends "Customer"
{
    LookupPageId = "Item Lookup";
    fields
    {
        field(50110; Facebook; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50112; Twitter; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50113; Instagram; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50114; LinkedIn; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        modify("Country/Region Code"){
            TableRelation = Resource;
        }
        modify("Address 2"){
            TableRelation = Customer;
        }

    }

}