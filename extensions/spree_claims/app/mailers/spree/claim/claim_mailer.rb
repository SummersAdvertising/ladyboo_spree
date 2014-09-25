class Spree::Claim::ClaimMailer < Spree::BaseMailer
  def claim_email(claim)
    @claim = claim

    mail :from     => (SpreeClaim.mailer_from || @claim.email),
         :reply_to => @claim.email,
         :subject  => @claim.subject,
         :to       => SpreeClaim.mailer_to
  end
end
