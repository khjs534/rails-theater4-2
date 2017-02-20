class SalesMailer < ApplicationMailer

  def confirmation_email(sale)
    @sale = sale
    mail(to: @sale.customer_email, subject: "Order Confirmation")
  end
end
