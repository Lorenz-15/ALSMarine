reportextension 50101 DeliveryReceipteExt extends "Sales - Shipment"
{
    dataset
    {
        add("Sales Shipment Header")
        {
            column("CustomerNo"; "No.")
            {
            }
            column("CustName"; "Bill-to Name")
            {
            }
            column("PostDate"; "Posting Date")
            {
            }
            column("Desc"; "Work Description")
            {
            }
            column("VATReg"; "VAT Registration No.")
            {
            }
            column(Address; "Bill-to Address")
            {
            }
        }
        addlast("Sales Shipment Header")
        {
            dataitem("Line Shipment"; "Sales Shipment Line")
            {
                DataItemLink = "Document No." = field("No."),
                "Sell-to Customer No." = field("Sell-to Customer No.");
                DataItemLinkReference = "Sales Shipment Header";
            }
        }
        addlast("Sales Shipment Header")
        {
            dataitem("Customer"; "Customer")
            {
                DataItemLink = "No." = field("No."), "Name" = field("Bill-to Name");
                DataItemLinkReference = "Sales Shipment Header";

                column("VATRegcust"; "VAT Registration No.")
                {
                }
                column("Addresscust"; "Address")
                {
                }


            }
        }


    }
    requestpage
    {

    }
    rendering
    {
        layout("ALS Delivery Receipt")
        {
            Type = RDLC;
            LayoutFile = 'src/reports/layouts/DeliveryReceipt.rdl';
            Summary = 'Custom Layout for Delivery Receipt';
        }
    }
}