# -*- encoding: utf-8 -*-
# stub: spree_gateway 2.3.0.beta ruby lib

Gem::Specification.new do |s|
  s.name = "spree_gateway"
  s.version = "2.3.0.beta"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Spree Commerce"]
  s.date = "2014-08-21"
  s.description = "Additional Payment Gateways for Spree Commerce"
  s.email = "gems@spreecommerce.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "Guardfile", "LICENSE.md", "README.md", "Rakefile", "Versionfile", "app/assets/javascripts/spree/frontend/spree_gateway.js", "app/assets/javascripts/store/gateway/stripe.js.coffee", "app/assets/javascripts/store/spree_gateway.js", "app/assets/stylesheets/spree/frontend/spree_gateway.css", "app/controllers/spree/checkout_controller_decorator.rb", "app/controllers/spree/skrill_status_controller.rb", "app/models/spree/billing_integration/skrill/quick_checkout.rb", "app/models/spree/gateway/authorize_net.rb", "app/models/spree/gateway/authorize_net_cim.rb", "app/models/spree/gateway/balanced_gateway.rb", "app/models/spree/gateway/banwire.rb", "app/models/spree/gateway/beanstream.rb", "app/models/spree/gateway/braintree_gateway.rb", "app/models/spree/gateway/card_save.rb", "app/models/spree/gateway/data_cash.rb", "app/models/spree/gateway/eway.rb", "app/models/spree/gateway/fatzebra.rb", "app/models/spree/gateway/linkpoint.rb", "app/models/spree/gateway/maxipago.rb", "app/models/spree/gateway/migs.rb", "app/models/spree/gateway/moneris.rb", "app/models/spree/gateway/pay_junction.rb", "app/models/spree/gateway/pay_pal_gateway.rb", "app/models/spree/gateway/payflow_pro.rb", "app/models/spree/gateway/paymill.rb", "app/models/spree/gateway/pin_gateway.rb", "app/models/spree/gateway/sage_pay.rb", "app/models/spree/gateway/samurai.rb", "app/models/spree/gateway/secure_pay_au.rb", "app/models/spree/gateway/spreedly_core_gateway.rb", "app/models/spree/gateway/stripe_gateway.rb", "app/models/spree/gateway/usa_epay.rb", "app/models/spree/gateway/worldpay.rb", "app/models/spree/skrill_transaction.rb", "app/views/spree/admin/log_entries/_braintree.html.erb", "app/views/spree/admin/log_entries/_stripe.html.erb", "app/views/spree/admin/payments/source_forms/_quickcheckout.html.erb", "app/views/spree/admin/payments/source_forms/_stripe.html.erb", "app/views/spree/admin/payments/source_views/_quickcheckout.html.erb", "app/views/spree/admin/payments/source_views/_stripe.html.erb", "app/views/spree/checkout/payment/_quickcheckout.html.erb", "app/views/spree/checkout/payment/_stripe.html.erb", "config/locales/bg.yml", "config/locales/de.yml", "config/locales/en.yml", "config/locales/sv.yml", "config/routes.rb", "db/migrate/20111118164631_create_skrill_transactions.rb", "db/migrate/20121017004102_update_braintree_payment_method_type.rb", "db/migrate/20130213222555_update_stripe_payment_method_type.rb", "db/migrate/20130415222802_update_balanced_payment_method_type.rb", "db/migrate/20131008221012_update_paypal_payment_method_type.rb", "db/migrate/20131112133401_migrate_stripe_preferences.rb", "lib/active_merchant/billing/skrill.rb", "lib/generators/spree_gateway/install/install_generator.rb", "lib/spree_gateway.rb", "lib/spree_gateway/engine.rb", "script/rails", "spec/controllers/spree/checkout_controller_spec.rb", "spec/controllers/spree/skrill_status_controller_spec.rb", "spec/factories/payment_method_factory.rb", "spec/factories/skrill_transaction_factory.rb", "spec/features/stripe_checkout_spec.rb", "spec/lib/active_merchant/billing_skrill_spec.rb", "spec/models/billing_integration/skrill_quick_checkout_spec.rb", "spec/models/gateway/authorize_net_cim_spec.rb", "spec/models/gateway/authorize_net_spec.rb", "spec/models/gateway/balanced_gateway_spec.rb", "spec/models/gateway/banwire_spec.rb", "spec/models/gateway/beanstream_spec.rb", "spec/models/gateway/braintree_gateway_spec.rb", "spec/models/gateway/card_save_spec.rb", "spec/models/gateway/data_cache_spec.rb", "spec/models/gateway/eway_spec.rb", "spec/models/gateway/fatzebra_spec.rb", "spec/models/gateway/linkpoint_spec.rb", "spec/models/gateway/maxipago_spec.rb", "spec/models/gateway/moneris_spec.rb", "spec/models/gateway/pay_junction_spec.rb", "spec/models/gateway/pay_pal_spec.rb", "spec/models/gateway/payflow_pro_spec.rb", "spec/models/gateway/paymill_spec.rb", "spec/models/gateway/pin_gateway_spec.rb", "spec/models/gateway/sage_pay_spec.rb", "spec/models/gateway/samurai_spec.rb", "spec/models/gateway/secure_pay_au_spec.rb", "spec/models/gateway/stripe_gateway_spec.rb", "spec/models/gateway/usa_epay_spec.rb", "spec/models/gateway/worldpay_spec.rb", "spec/models/skrill_transaction_spec.rb", "spec/spec_helper.rb", "spree_gateway.gemspec"]
  s.homepage = "http://www.spreecommerce.com"
  s.licenses = ["BSD-3"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.1"
  s.summary = "Additional Payment Gateways for Spree Commerce"
  s.test_files = ["spec/controllers/spree/checkout_controller_spec.rb", "spec/controllers/spree/skrill_status_controller_spec.rb", "spec/factories/payment_method_factory.rb", "spec/factories/skrill_transaction_factory.rb", "spec/features/stripe_checkout_spec.rb", "spec/lib/active_merchant/billing_skrill_spec.rb", "spec/models/billing_integration/skrill_quick_checkout_spec.rb", "spec/models/gateway/authorize_net_cim_spec.rb", "spec/models/gateway/authorize_net_spec.rb", "spec/models/gateway/balanced_gateway_spec.rb", "spec/models/gateway/banwire_spec.rb", "spec/models/gateway/beanstream_spec.rb", "spec/models/gateway/braintree_gateway_spec.rb", "spec/models/gateway/card_save_spec.rb", "spec/models/gateway/data_cache_spec.rb", "spec/models/gateway/eway_spec.rb", "spec/models/gateway/fatzebra_spec.rb", "spec/models/gateway/linkpoint_spec.rb", "spec/models/gateway/maxipago_spec.rb", "spec/models/gateway/moneris_spec.rb", "spec/models/gateway/pay_junction_spec.rb", "spec/models/gateway/pay_pal_spec.rb", "spec/models/gateway/payflow_pro_spec.rb", "spec/models/gateway/paymill_spec.rb", "spec/models/gateway/pin_gateway_spec.rb", "spec/models/gateway/sage_pay_spec.rb", "spec/models/gateway/samurai_spec.rb", "spec/models/gateway/secure_pay_au_spec.rb", "spec/models/gateway/stripe_gateway_spec.rb", "spec/models/gateway/usa_epay_spec.rb", "spec/models/gateway/worldpay_spec.rb", "spec/models/skrill_transaction_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<capybara>, ["= 2.2.1"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<poltergeist>, ["= 1.5.0"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, ["= 1.2.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<mysql2>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<braintree>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<capybara>, ["= 2.2.1"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<poltergeist>, ["= 1.5.0"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, ["= 1.2.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<braintree>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
    s.add_dependency(%q<factory_girl>, ["~> 4.4"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<capybara>, ["= 2.2.1"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<poltergeist>, ["= 1.5.0"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, ["= 1.2.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<braintree>, [">= 0"])
  end
end
