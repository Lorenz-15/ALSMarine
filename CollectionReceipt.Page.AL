reportextension 50103 CollectionReceiptExt extends "General Journal - Test"
{
    dataset
    {
        add("Gen. Journal Line")
        {
            column("NoSeries"; "Document No.") { }
            column("PostDate"; "Posting Date") { }
            column("Amount"; "Amount") { }
            column("SalesInvoiceNo"; "Document No.") { }
        }

        addlast("Gen. Journal Line")
        {
            dataitem("Customers"; "Customer")
            {
                // Sort the table view based on the "No." field.

                // Include the "No." field on the filter tab of the request page.
                //RequestFilterFields = "No.";
                // Print data only if at least one of the CustLedgerEntry and SalesHeader data items generates output.
                //PrintOnlyIfDetail = True;
                DataItemLink = "No." = field("Document No.");
                DataItemLinkReference = "Gen. Journal Line";

                column("CustomerName"; "Name")
                {

                }
                column("VatRegNo"; "VAT Registration No.") { }
                column("Address"; "Address") { }
                column("BusinessStyle"; "Name") { }
            }
        }
    }


    rendering
    {
        layout("Collection Receipt")
        {
            Type = RDLC;
            LayoutFile = 'src/reports/layouts/CollectioonReceipt.rdl';
            Summary = 'Custom Layout for Collection Receipt';
        }
    }
}

