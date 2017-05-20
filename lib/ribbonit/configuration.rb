require 'active_support/configurable'

module Ribbonit
  def self.configuration
    @configuration ||= Ribbonit::Configuration.new
  end

  def self.configure
    yield configuration
  end
end

class Ribbonit::Configuration
  include ActiveSupport::Configurable

  config_accessor(:display_rails_version) { true }
  config_accessor(:display_ruby_version) { true }
  config_accessor(:hide_for_small) { true }
  config_accessor(:position) { 'top-left' }
  config_accessor(:themes) do
    {
      development: 'orange',
      staging: 'blue'
    }
  end
  config_accessor(:staging_name) { 'staging' }
end
