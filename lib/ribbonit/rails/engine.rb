require 'ribbonit/view_helpers'

# rubocop:disable ClassAndModuleChildren
module Ribbonit
  module Rails
    class Engine < ::Rails::Engine
      initializer 'ribbonit.view_helpers' do |_app|
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
