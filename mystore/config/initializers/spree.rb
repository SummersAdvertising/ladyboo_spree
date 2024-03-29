# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  # config.override_actionmailer_config = false
  
  # config.mails_from = "no-reply@summers.com.tw"
  config.shipping_instructions = false

  # Allow guest ( unregistered user) to checkout product.
  config.allow_guest_checkout = false

  config.address_requires_state = true

  # config.default_country_id = 104  # Taiwan

  # config.currency = 'TWD'
end

Spree.user_class = "Spree::LegacyUser"
