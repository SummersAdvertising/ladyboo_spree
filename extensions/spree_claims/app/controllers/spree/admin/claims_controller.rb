module Spree
  module Admin
    class ClaimsController < Spree::Admin::BaseController
      helper Spree::ClaimsHelper
      respond_to :html, :json, :js

      def index
        @claims = Spree::Claim.all.page(params[:page])
      end

      def edit
        @claim = Spree::Claim.find_by_id(params[:id]) 
      end

      def update
        @claim = Spree::Claim.find_by_id(params[:id])
        respond_to do |format|
          if @claim.update(claim_params)
            flash[:success] = Spree.t("claim_was_successfully_updated")
            format.html { redirect_to admin_claims_path }
          else
            format.html { render :edit }
          end
        end
      end

      private

        def claim_params
          params.require(:claim).permit(:name, :email, :subject, :order, :message, :note, :status, :created_at, :closed_at)
        end
    end
  end
end
