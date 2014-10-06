module Spree
  class BankTransferMailer < BaseMailer
    def notify_email_to_admin(order_id)
      @order = Spree::Order.find(order_id)
      subject = "#{Spree::Store.current.name} #{Spree.t('bank_transfer_mailer')} ##{@order.number}"
      mail(to: Spree::User.admin.last.email, from: from_address, subject: subject)
    end  
  end  
end  