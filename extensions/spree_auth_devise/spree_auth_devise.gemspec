# -*- encoding: utf-8 -*-
# stub: spree_auth_devise 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_auth_devise"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Schofield"]
  s.date = "2014-08-22"
  s.description = "Provides authentication and authorization services for use with Spree by using Devise and CanCan."
  s.email = "sean@spreecommerce.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE.md", "README.md", "Rakefile", "Versionfile", "app/controllers/metal_decorator.rb", "app/mailers/spree/user_mailer.rb", "app/models/spree/auth_configuration.rb", "app/models/spree/user.rb", "app/overrides/auth_shared_login_bar.rb", "app/overrides/spree/admin/shared/_header/auth_admin_login_navigation_bar.html.erb.deface", "config.ru", "config/initializers/devise.rb", "config/initializers/warden.rb", "config/locales/de.yml", "config/locales/en.yml", "config/locales/es.yml", "config/locales/fr.yml", "config/locales/it.yml", "config/locales/nl.yml", "config/locales/tr.yml", "config/routes.rb", "db/default/users.rb", "db/migrate/20101026184949_create_users.rb", "db/migrate/20101026184950_rename_columns_for_devise.rb", "db/migrate/20101214150824_convert_user_remember_field.rb", "db/migrate/20120203010234_add_reset_password_sent_at_to_spree_users.rb", "db/migrate/20120605211305_make_users_email_index_unique.rb", "db/seeds.rb", "lib/assets/javascripts/spree/backend/spree_auth.js.erb", "lib/assets/javascripts/spree/frontend/spree_auth.js.erb", "lib/assets/stylesheets/spree/backend/spree_auth.css.erb", "lib/assets/stylesheets/spree/frontend/spree_auth.css.erb", "lib/controllers/backend/spree/admin/admin_controller_decorator.rb", "lib/controllers/backend/spree/admin/admin_orders_controller_decorator.rb", "lib/controllers/backend/spree/admin/admin_resource_controller_decorator.rb", "lib/controllers/backend/spree/admin/orders/customer_details_controller_decorator.rb", "lib/controllers/backend/spree/admin/user_passwords_controller.rb", "lib/controllers/backend/spree/admin/user_sessions_controller.rb", "lib/controllers/frontend/spree/checkout_controller_decorator.rb", "lib/controllers/frontend/spree/user_passwords_controller.rb", "lib/controllers/frontend/spree/user_registrations_controller.rb", "lib/controllers/frontend/spree/user_sessions_controller.rb", "lib/controllers/frontend/spree/users_controller.rb", "lib/generators/spree/auth/install/install_generator.rb", "lib/generators/spree/auth/install/templates/config/initializers/devise.rb", "lib/spree/auth.rb", "lib/spree/auth/devise.rb", "lib/spree/auth/engine.rb", "lib/spree/authentication_helpers.rb", "lib/spree_auth_devise.rb", "lib/tasks/auth.rake", "lib/views/backend/spree/admin/user_passwords/edit.html.erb", "lib/views/backend/spree/admin/user_passwords/new.html.erb", "lib/views/backend/spree/admin/user_sessions/authorization_failure.html.erb", "lib/views/backend/spree/admin/user_sessions/new.html.erb", "lib/views/backend/spree/layouts/admin/_login_nav.html.erb", "lib/views/frontend/spree/checkout/registration.html.erb", "lib/views/frontend/spree/shared/_flashes.html.erb", "lib/views/frontend/spree/shared/_login.html.erb", "lib/views/frontend/spree/shared/_login_bar.html.erb", "lib/views/frontend/spree/shared/_user_form.html.erb", "lib/views/frontend/spree/user_mailer/reset_password_instructions.text.erb", "lib/views/frontend/spree/user_passwords/edit.html.erb", "lib/views/frontend/spree/user_passwords/new.html.erb", "lib/views/frontend/spree/user_registrations/new.html.erb", "lib/views/frontend/spree/user_sessions/authorization_failure.html.erb", "lib/views/frontend/spree/user_sessions/new.html.erb", "lib/views/frontend/spree/users/edit.html.erb", "lib/views/frontend/spree/users/show.html.erb", "script/rails", "spec/controllers/spree/admin/orders_controller_spec.rb", "spec/controllers/spree/checkout_controller_spec.rb", "spec/controllers/spree/products_controller_spec.rb", "spec/controllers/spree/user_passwords_controller_spec.rb", "spec/controllers/spree/user_registrations_controller_spec.rb", "spec/controllers/spree/user_sessions_controller_spec.rb", "spec/controllers/spree/users_controller_spec.rb", "spec/features/account_spec.rb", "spec/features/admin/orders_spec.rb", "spec/features/admin/password_reset_spec.rb", "spec/features/admin/payment_methods_spec.rb", "spec/features/admin/products_spec.rb", "spec/features/admin/sign_in_spec.rb", "spec/features/admin/sign_out_spec.rb", "spec/features/admin_permissions_spec.rb", "spec/features/change_email_spec.rb", "spec/features/checkout_spec.rb", "spec/features/order_spec.rb", "spec/features/password_reset_spec.rb", "spec/features/sign_in_spec.rb", "spec/features/sign_out_spec.rb", "spec/features/sign_up_spec.rb", "spec/mailers/user_mailer_spec.rb", "spec/models/order_spec.rb", "spec/models/user_spec.rb", "spec/spec_helper.rb", "spec/support/authentication_helpers.rb", "spree_auth_devise.gemspec"]
  s.homepage = "http://spreecommerce.com"
  s.licenses = ["BSD-3"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.1"
  s.summary = "Provides authentication and authorization services for use with Spree by using Devise and CanCan."
  s.test_files = ["spec/controllers/spree/admin/orders_controller_spec.rb", "spec/controllers/spree/checkout_controller_spec.rb", "spec/controllers/spree/products_controller_spec.rb", "spec/controllers/spree/user_passwords_controller_spec.rb", "spec/controllers/spree/user_registrations_controller_spec.rb", "spec/controllers/spree/user_sessions_controller_spec.rb", "spec/controllers/spree/users_controller_spec.rb", "spec/features/account_spec.rb", "spec/features/admin/orders_spec.rb", "spec/features/admin/password_reset_spec.rb", "spec/features/admin/payment_methods_spec.rb", "spec/features/admin/products_spec.rb", "spec/features/admin/sign_in_spec.rb", "spec/features/admin/sign_out_spec.rb", "spec/features/admin_permissions_spec.rb", "spec/features/change_email_spec.rb", "spec/features/checkout_spec.rb", "spec/features/order_spec.rb", "spec/features/password_reset_spec.rb", "spec/features/sign_in_spec.rb", "spec/features/sign_out_spec.rb", "spec/features/sign_up_spec.rb", "spec/mailers/user_mailer_spec.rb", "spec/models/order_spec.rb", "spec/models/user_spec.rb", "spec/spec_helper.rb", "spec/support/authentication_helpers.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<devise>, ["~> 3.2.3"])
      s.add_runtime_dependency(%q<devise-encryptable>, ["= 0.1.2"])
      s.add_runtime_dependency(%q<cancan>, ["~> 1.6.10"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<spree_backend>, ["~> 2.3.0"])
      s.add_development_dependency(%q<spree_frontend>, ["~> 2.3.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<mysql2>, [">= 0"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_development_dependency(%q<email_spec>, ["~> 1.5.0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>, ["~> 1.5"])
      s.add_development_dependency(%q<capybara>, ["~> 2.2.1"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<poltergeist>, ["~> 1.5.0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_dependency(%q<devise>, ["~> 3.2.3"])
      s.add_dependency(%q<devise-encryptable>, ["= 0.1.2"])
      s.add_dependency(%q<cancan>, ["~> 1.6.10"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<spree_backend>, ["~> 2.3.0"])
      s.add_dependency(%q<spree_frontend>, ["~> 2.3.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_dependency(%q<email_spec>, ["~> 1.5.0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>, ["~> 1.5"])
      s.add_dependency(%q<capybara>, ["~> 2.2.1"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<poltergeist>, ["~> 1.5.0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
    s.add_dependency(%q<devise>, ["~> 3.2.3"])
    s.add_dependency(%q<devise-encryptable>, ["= 0.1.2"])
    s.add_dependency(%q<cancan>, ["~> 1.6.10"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<spree_backend>, ["~> 2.3.0"])
    s.add_dependency(%q<spree_frontend>, ["~> 2.3.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<factory_girl>, ["~> 4.4"])
    s.add_dependency(%q<email_spec>, ["~> 1.5.0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>, ["~> 1.5"])
    s.add_dependency(%q<capybara>, ["~> 2.2.1"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<poltergeist>, ["~> 1.5.0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
