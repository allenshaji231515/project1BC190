xmlport 50100 MyXmlport
{
    Format = Xml;
    Direction=export;
    UseRequestPage = false;

    schema
    {
        textelement(Root)
        {
            tableelement(Customer; Customer)
            {
                AutoReplace = false;
                fieldattribute(No; Customer."No.")
                {
                      
                }
                fieldattribute(Language; Customer."Language Code") {   }
                fieldattribute(Image; Customer.Image) {   }
                fieldelement(Name; Customer.Name) { }
                textelement(Address)
                {
                      
                    fieldelement(StreetANDNr; Customer."Address")
                    {
                        fieldattribute(Address2; Customer."Address 2") { Width = 20; }
                    }
                    fieldelement(City; Customer.City)
                    {
                        fieldattribute(Zipcode; Customer."Post Code") { Width = 20; }
                    }
                }
                fieldelement(Phone; Customer."Phone No.") {Width = 20; }
            }


        }

    }

    requestpage
    {

    }


}



