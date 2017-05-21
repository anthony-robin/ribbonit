# rubocop:disable ClassAndModuleChildren
module Ribbonit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Copy Ribbonit initializer configuration'
      source_root File.expand_path('../templates', __FILE__)

      def copy_initializer
        template 'ribbonit.rb', 'config/initializers/ribbonit.rb'
      end
    end
  end
end
