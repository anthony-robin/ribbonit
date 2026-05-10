require 'active_support/core_ext/class/attribute'

module Ribbonit
  def self.configuration
    @configuration ||= Configuration
  end

  def self.configure
    yield configuration
  end

  class Configuration
    class_attribute :infos_to_display, default: %i[
      rails_version
      ruby_version
    ]

    class_attribute :extra_content, default: nil
    class_attribute :root_link, default: false
    class_attribute :hide_for_small, default: true
    class_attribute :position, default: 'top-left'
    class_attribute :sticky, default: true

    class_attribute :themes, default: {
      development: 'black',
      staging: 'blue'
    }
  end
end
