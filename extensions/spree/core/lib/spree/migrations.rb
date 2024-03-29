module Spree
  class Migrations
    attr_reader :config, :engine_name

    # Takes the engine config block and engine name
    def initialize(config, engine_name)
      @config, @engine_name = config, engine_name
    end

    # Puts warning when any engine migration is not present on the Rails app
    # db/migrate dir
    #
    # First split:
    #
    #   ["20131128203548", "update_name_fields_on_spree_credit_cards.spree.rb"]
    #
    # Second split should give the engine_name of the migration
    #
    #   ["update_name_fields_on_spree_credit_cards", "spree.rb"]
    #
    # Shouldn't run on test mode because migrations inside engine don't have
    # engine name on the file name
    def check
      if File.exists?("config/spree.yml") && File.directory?("db/migrate")
        engine_in_app = app_migrations.map do |file_name|
          name, engine = file_name.split(".", 2)
          next unless match_engine?(engine)
          name
        end.compact! || []

        unless (engine_migrations.sort - engine_in_app.sort).empty?
          puts "[#{engine_name.capitalize} WARNING] Missing migrations." \
               " Run `bundle exec rake railties:install:migrations` to get them.\n\n"
          true
        end
      end
    end

    private
      def engine_migrations
        Dir.entries("#{config.root}/db/migrate").map do |file_name|
          next if [".", "..", ".DS_Store"].include? file_name
          name = file_name.split("_", 2).last.split(".", 2).first
          name.empty? ? next : name
        end.compact! || []
      end

      def app_migrations
        Dir.entries("db/migrate").map do |file_name|
          next if [".", ".."].include? file_name
          name = file_name.split("_", 2).last
          name.empty? ? next : name
        end.compact! || []
      end

      def match_engine?(engine)
        if engine_name == "spree"
          # Avoid stores upgrading from 1.3 getting wrong warnings
          ["spree.rb", "spree_promo.rb"].include? engine
        else
          engine == "#{engine_name}.rb"
        end
      end
  end
end
