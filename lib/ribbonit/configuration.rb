require 'active_support/configurable'

module Ribbonit
  def self.configuration
    @configuration ||= Ribbonit::Configuration.new
  end

  def self.configure
    yield configuration
  end

  class Configuration
    include ActiveSupport::Configurable

    config_accessor(:infos_to_display) do
      %i[rails_version ruby_version]
    end
    config_accessor(:extra_content) { nil }
    config_accessor(:root_link) { false }
    config_accessor(:hide_for_small) { true }
    config_accessor(:position) { 'top-left' }
    config_accessor(:sticky) { true }
    config_accessor(:themes) do
      {
        development: 'black',
        staging: 'blue'
      }
    end
  end
end
