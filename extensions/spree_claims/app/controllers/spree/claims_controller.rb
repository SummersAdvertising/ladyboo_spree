class Spree::ClaimsController < Spree::StoreController

  helper "spree/products"
  
  def new
    @order_number = params[:order_number]
    @claim = Spree::Claim.new 
  end

  def create
    @order = Spree::Order.find_by_number(params[:order_number])
    @claim = Spree::Claim.new(claim_params)
    @claim.name = full_name(@order)
    @claim.email = @order.billing_address.user.email
    @claim.subject = "order: #{@order.number}"
    @claim.order_number = @order.number
    @claim.status = '1'  # open: '1', closed: '2'
    respond_to do |format|
      if @claim.save
        if send_mail(@claim)
          flash[:success] = Spree.t("claim_was_successfully_sent")
          format.html { redirect_to order_path(@claim.order_number)}
        end  
      else
        format.html { render :new }
      end
    end
  end

  private

    def claim_params
      params.require(:claim).permit(:name, :email, :subject, :order, :message, :note, :status, :created_at, :closed_at)
    end

    def full_name(order)
      if I18n.locale = 'zh-TW'
        order.billing_address.last_name + ' ' + order.billing_address.first_name
      else  
        order.billing_address.first_name + ' ' + order.billing_address.last_name
      end  
    end

    def send_mail(claim)
      if claim.valid?
        Spree::Claim::ClaimMailer.claim_email(claim).deliver
      end  
    end
end
