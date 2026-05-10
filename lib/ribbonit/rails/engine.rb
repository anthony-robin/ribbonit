require 'ribbonit/view_helpers'

module Ribbonit
  module Rails
    class Engine < ::Rails::Engine
      initializer 'ribbonit.view_helpers' do |_app|
        ActionView::Base.include ViewHelpers
      end
    end
  end
end
