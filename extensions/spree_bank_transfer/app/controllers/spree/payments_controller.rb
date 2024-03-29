module Spree
  class PaymentsController < Spree::StoreController
    before_filter :authenticate_spree_user!
    before_filter :find_payment

    def update
      payment_details = PaymentDetails.new(@payment, payment_params)
      if payment_details.save
        # Send email to administrator
        BankTransferMailer.notify_email_to_admin(payment_details.payment.order_id).deliver
        flash[:notice] = Spree.t(:payment_successfully_updated)
      else
        flash[:error] = payment_details.errors.to_sentence
      end
      redirect_to :back
    end

    def find_payment
      @payment = spree_current_user.payments.where(:id => params[:id]).first
      unless @payment
        flash[:error] = Spree.t(:payment_not_found)
        redirect_to :back
      end
    end
    
    private
      def payment_params
        params.require(:payment).permit(:deposited_on, :bank_name, :account_no, :transaction_reference_no)
      end
  end
end