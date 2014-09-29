# -*- encoding: utf-8 -*-
# stub: spree_i18n 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_i18n"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Schofield"]
  s.date = "2014-08-21"
  s.description = "Provides locale information for use in Spree."
  s.email = "sean.schofield@gmail.com"
  s.files = [".gitignore", ".localeapp/config.rb", ".rspec", ".travis.yml", "Gemfile", "LICENSE.md", "README.md", "Rakefile", "app/assets/javascripts/spree/backend/spree_i18n.js", "app/assets/javascripts/spree/backend/taxon_tree_menu.js.coffee", "app/assets/javascripts/spree/backend/translations.js.coffee", "app/assets/javascripts/spree/frontend/locale.js.coffee", "app/assets/javascripts/spree/frontend/spree_i18n.js", "app/assets/stylesheets/spree/backend/spree_i18n.css", "app/assets/stylesheets/spree/backend/translations.css.scss", "app/assets/stylesheets/spree/frontend/spree_i18n.css", "app/controllers/spree/admin/general_settings_controller_decorator.rb", "app/controllers/spree/admin/option_values_controller_decorator.rb", "app/controllers/spree/admin/translations_controller.rb", "app/controllers/spree/api/base_controller_decorator.rb", "app/controllers/spree/base_controller_decorator.rb", "app/controllers/spree/locale_controller.rb", "app/helpers/spree_i18n/locale_helper.rb", "app/models/spree/option_type_decorator.rb", "app/models/spree/option_value_decorator.rb", "app/models/spree/product_decorator.rb", "app/models/spree/promotion_decorator.rb", "app/models/spree/property_decorator.rb", "app/models/spree/taxon_decorator.rb", "app/models/spree/taxonomy_decorator.rb", "app/models/spree_i18n/translatable.rb", "app/overrides/spree/admin/general_settings/edit/localization_settings.html.erb.deface", "app/overrides/spree/admin/option_types/_option_value_fields/add_translation.html.erb.deface", "app/overrides/spree/admin/option_types/index/add_translation.html.erb.deface", "app/overrides/spree/admin/promotions/index/add_translation_link.html.erb.deface", "app/overrides/spree/admin/properties/index/add_translation.html.erb.deface", "app/overrides/spree/admin/shared/_product_tabs/add_translations.html.erb.deface", "app/overrides/spree/admin/shared/_translations/translation.html.erb.deface", "app/overrides/spree/admin/taxonomies/_list/add_translations.html.erb.deface", "app/overrides/spree/admin/taxons/edit/add_translations.html.erb.deface", "app/overrides/spree/shared/_main_nav_bar/locale_selector.html.erb.deface", "app/views/spree/admin/translations/_form.html.erb", "app/views/spree/admin/translations/_form_fields.html.erb", "app/views/spree/admin/translations/_settings.html.erb", "app/views/spree/admin/translations/option_type.html.erb", "app/views/spree/admin/translations/option_value.html.erb", "app/views/spree/admin/translations/product.html.erb", "app/views/spree/admin/translations/promotion.html.erb", "app/views/spree/admin/translations/property.html.erb", "app/views/spree/admin/translations/taxon.html.erb", "app/views/spree/admin/translations/taxonomy.html.erb", "config/initializers/country_names.rb", "config/initializers/form_builder_globalize_patch.rb", "config/locales/az.yml", "config/locales/ca.yml", "config/locales/cs.yml", "config/locales/da.yml", "config/locales/de-CH.yml", "config/locales/de.yml", "config/locales/el.yml", "config/locales/en-AU.yml", "config/locales/en-GB.yml", "config/locales/en-IN.yml", "config/locales/en-NZ.yml", "config/locales/es-CL.yml", "config/locales/es-EC.yml", "config/locales/es-MX.yml", "config/locales/es.yml", "config/locales/et.yml", "config/locales/fa.yml", "config/locales/fi.yml", "config/locales/fr.yml", "config/locales/id.yml", "config/locales/it.yml", "config/locales/ja.yml", "config/locales/ko.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/pt.yml", "config/locales/ro.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl-SI.yml", "config/locales/sv.yml", "config/locales/sw.yml", "config/locales/th.yml", "config/locales/tr.yml", "config/locales/uk.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "config/routes.rb", "db/migrate/20130419041407_add_translations_to_main_models.rb", "db/migrate/20130518224827_add_translations_to_product_permalink.rb", "db/migrate/20131009091000_add_translations_to_option_value.rb", "db/migrate/20140206202524_rename_activator_translations_to_promotion_translations.rb", "db/migrate/20140219130603_update_spree_product_translations.rb", "lib/generators/spree_i18n/install/install_generator.rb", "lib/globalize/active_record/migration.rb", "lib/spree/i18n_utils.rb", "lib/spree_i18n.rb", "lib/spree_i18n/configuration.rb", "lib/spree_i18n/controller_locale_helper.rb", "lib/spree_i18n/engine.rb", "lib/spree_i18n/fallbacks.rb", "lib/spree_i18n/locale.rb", "script/rails", "spec/controllers/locales_controller_spec.rb", "spec/controllers/spree/products_controller_spec.rb", "spec/features/admin/translations_spec.rb", "spec/integration/russian_errors_translation_spec.rb", "spec/integration/translation_spec.rb", "spec/models/product_spec.rb", "spec/models/translated_models_spec.rb", "spec/spec_helper.rb", "spec/support/be_a_thorough_translation_of_matcher.rb", "spec/support/shared_contexts/translatable_context.rb", "spree_i18n.gemspec"]
  s.homepage = "http://spreecommerce.com"
  s.licenses = ["BSD-3"]
  s.requirements = ["none"]
  s.rubyforge_project = "spree_i18n"
  s.rubygems_version = "2.4.1"
  s.summary = "Provides locale information for use in Spree."
  s.test_files = ["spec/controllers/locales_controller_spec.rb", "spec/controllers/spree/products_controller_spec.rb", "spec/features/admin/translations_spec.rb", "spec/integration/russian_errors_translation_spec.rb", "spec/integration/translation_spec.rb", "spec/models/product_spec.rb", "spec/models/translated_models_spec.rb", "spec/spec_helper.rb", "spec/support/be_a_thorough_translation_of_matcher.rb", "spec/support/shared_contexts/translatable_context.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-i18n>, ["~> 4.0.1"])
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<globalize>, ["~> 4.0.2"])
      s.add_runtime_dependency(%q<i18n_data>, ["~> 0.5.1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.9"])
      s.add_development_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_development_dependency(%q<i18n-spec>, ["~> 0.4.1"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_development_dependency(%q<capybara>, ["~> 2.2.1"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<poltergeist>, ["~> 1.5.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<rails-i18n>, ["~> 4.0.1"])
      s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_dependency(%q<globalize>, ["~> 4.0.2"])
      s.add_dependency(%q<i18n_data>, ["~> 0.5.1"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.9"])
      s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
      s.add_dependency(%q<i18n-spec>, ["~> 0.4.1"])
      s.add_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_dependency(%q<capybara>, ["~> 2.2.1"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<poltergeist>, ["~> 1.5.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails-i18n>, ["~> 4.0.1"])
    s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
    s.add_dependency(%q<globalize>, ["~> 4.0.2"])
    s.add_dependency(%q<i18n_data>, ["~> 0.5.1"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.9"])
    s.add_dependency(%q<coffee-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<sass-rails>, ["~> 4.0.0"])
    s.add_dependency(%q<i18n-spec>, ["~> 0.4.1"])
    s.add_dependency(%q<factory_girl>, ["~> 4.4"])
    s.add_dependency(%q<capybara>, ["~> 2.2.1"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<poltergeist>, ["~> 1.5.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
