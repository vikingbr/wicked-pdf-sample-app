class InvoicesController < ApplicationController
# access http://localhost:3000/invoices/1.pdf
  def show
    @invoice = Invoice.find params[:id]
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "fatura_id_data",
        template: "invoices/show",
        locals: {:invoice => @invoice}
      end
    end
  end

end
