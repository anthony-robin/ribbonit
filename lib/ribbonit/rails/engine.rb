require 'ribbonit/view_helpers'

module Ribbonit
  module Rails
    class Engine < ::Rails::Engine
      initializer 'ribbonit.view_helpers' do |app|
        ActionView::Base.send :include, ViewHelpers
        ActiveSupport.on_load(:action_controller) do
          append_view_path "#{Gem.loaded_specs['ribbonit'].full_gem_path}/lib/app/views/partials"
        end
      end
    end
  end
end
