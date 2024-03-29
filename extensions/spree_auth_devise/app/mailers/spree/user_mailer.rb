module Spree
  class UserMailer < BaseMailer
    def reset_password_instructions(user, token, *args)
      @edit_password_reset_url = spree.edit_spree_user_password_url(:reset_password_token => token, :host => Spree::Store.current.url)

      mail to: user.email, from: from_address, subject: Spree::Store.current.name + ' ' + I18n.t(:subject, :scope => [:devise, :mailer, :reset_password_instructions])
    end

    #--------  Add below  -------
    def welcome_email(user)
      @user = user

      subject = Spree.t(:welcome)
      mail to: user.email, from: from_address, subject: subject
    end
    #--------  Add above  -------
  end
end
