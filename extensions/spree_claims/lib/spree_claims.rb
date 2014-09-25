require 'spree_core'
require 'spree_claims/engine'

module SpreeClaim

  # Address Claim email notifications are sent from.
  mattr_accessor :mailer_from

  # Address to send Claim email notifications to.
  mattr_accessor :mailer_to

  # Default way to setup Claim. Run rake claim:install to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end

end