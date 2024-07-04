reportextension 50102 SalesInvoiceExt extends "Standard Sales - Invoice"
{
    dataset
    {
        // Add changes to dataitems and columns here
        add("Header")
        {
            column("NoSeries"; "No.")
            {
            }
            column("CustomerName"; "Bill-to Name")
            {
            }
            column("Vat_Reg"; "VAT Registration No.")
            {
            }
            column("Address"; "Bill-to Address")
            {
            }
            column("Conatct_No"; "Bill-to Contact No.")
            {
            }
            column("Conatct_Person"; "Bill-to Contact")
            {
            }
            column("Business_Style"; "Bill-to Name")
            {
            }
            column("DR_No"; "No.")
            {
            }
            column("VATInc"; "Amount Including VAT")
            {
            }
            column("VatEx"; "Amount")
            {
            }
            column(External_Document_No_; "External Document No.") { }
            column(Posting_Date; "Posting Date") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
        }

        addlast("Header")
        {
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Header";
                column("QTY"; "Quantity")
                {
                }
                column("Unit"; "Unit of Measure")
                {
                }
                column("Description"; "Description")
                {
                }
                column("Unit_Cost"; "Unit Cost")
                {
                }
                column("Amount"; "Unit Price")
                {
                }
                column("VatableSale"; "VAT Base Amount")
                {
                }

            }
        }
    }
    rendering
    {
        layout("ALS Sales Invoice")
        {
            Type = RDLC;
            LayoutFile = 'src/reports/layouts/SalesInvoice.rdl';
            Summary = 'Custom Layout for Sales Invoice';
        }
    }
}
