module Ribbonit
  module ViewHelpers
    def ribbonit
      render 'ribbon'
    end

    def branch_name
      `git rev-parse --abbrev-ref HEAD`.gsub('feature/', '')
    end

    def line_count
      height = 1
      items = configuration.infos_to_display
      height += 1 if items.include?(:ruby_version) || items.include?(:rails_version)
      height += 1 if items.include?(:git_branch)
      height += 1 if configuration.extra_content.present?
      height
    end

    private

    def configuration
      Ribbonit.configuration
    end
  end
end
