class Spree::UserRegistrationsController < Devise::RegistrationsController
  helper 'spree/base', 'spree/store'

  if Spree::Auth::Engine.dash_available?
    helper 'spree/analytics'
  end

  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::SSL
  include Spree::Core::ControllerHelpers::Store

  ssl_required
  before_filter :check_permissions, :only => [:edit, :update]
  skip_before_filter :require_no_authentication

  # GET /resource/sign_up
  def new
    super
    @user = resource
    # @address = Spree::Address.default
  end

  # POST /resource/sign_up
  def create
    @user = build_resource(spree_user_params)
    @address = Spree::Address.new(address_params)
    if resource.save && @address.save 
      @user.update_attributes(bill_address_id: @address.id)
      @address.update_attributes(user_id: @user.id)
      set_flash_message(:notice, :signed_up)
      sign_in(:spree_user, @user)
      session[:spree_user_signup] = true
      associate_user
      respond_with resource, location: after_sign_up_path_for(resource)
      # Send welcome email while user has completed registration
      Spree::UserMailer.welcome_email(@user).deliver
    else
      clean_up_passwords(resource)
      render :new
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected
    def check_permissions
      authorize!(:create, resource)
    end

  private
    def spree_user_params
      params.require(:spree_user).permit(Spree::PermittedAttributes.user_attributes)
    end

    def address_params
      params[:address].permit(:address,
                              :firstname,
                              :lastname,
                              :address1,
                              :address2,
                              :city,
                              :state_id,
                              :zipcode,
                              :country_id,
                              :phone,
                              :user_id
                             )
    end
end
