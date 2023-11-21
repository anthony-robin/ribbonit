Ribbonit.configure do |config|
  ###
  # Displayed informations
  #
  # Available options:
  # - rails_version: Version of Ruby on Rails
  # - ruby_version: Version of Ruby
  # - git_branch: Current git branch (only displayed in development)
  #
  config.infos_to_display = %i[rails_version ruby_version git_branch]

  ###
  # Extra content to add at the end
  #
  config.extra_content = nil

  ###
  # Wrap ribbon with link that goes to root_url ?
  #
  config.root_link = false

  ###
  # Display on small devices ?
  #
  config.hide_for_small = true

  ###
  # Position
  #
  # Available options:
  # top-left, top-right, bottom-left, bottom-right
  #
  config.position = 'top-left'

  ###
  # Stick ribbon to page on scroll ?
  #
  config.sticky = true

  ###
  # Themes
  #
  # Available options:
  # orange, blue, green, red, purple, black, white
  #
  config.themes = {
    development: 'black',
    staging: 'blue'
  }
end
