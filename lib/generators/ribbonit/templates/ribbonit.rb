Ribbonit.configure do |config|
  ###
  # Displayed informations
  #
  # Available options:
  # - rails_version: Version of Ruby on Rails
  # - ruby_version: Version of Ruby
  #
  config.infos_to_display = %i[rails_version ruby_version]

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

  ###
  # Environment name
  #
  config.staging_name = 'staging'
end
