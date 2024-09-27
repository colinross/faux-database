require "faux/database/version"

module Faux
  module Database
    class Error < StandardError; end

    class Configuration
      attr_accessor :adapter, :database, :username, :password, :host, :port
      attr_accessor :models
    end
    class Generator
      def initialize(config)
        @config = config
      end
      def generate
        @config.models.each do |model|
          puts "Generating model: #{model}"
        end
      end
    end

    def load_application_schemas!
      Rails.application.eager_load!
      ApplicationRecord.descendants.each do |model|
        model.send(:load_schema)
      end
    end

    def self.configure
      @config = Configuration.new
      yield @config
    end

    def self.generate
      Generator.new(@config).generate
    end
  end
end
