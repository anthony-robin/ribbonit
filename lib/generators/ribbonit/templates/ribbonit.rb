Ribbonit.configure do |config|
  ###
  # Displayed informations
  #
  config.display_rails_version = true
  config.display_ruby_version = true

  ###
  # Display on small devices ?
  #
  config.hide_for_small = true

  ###
  # Position - available positions are:
  # 'top-left', 'top-right', 'bottom-left', 'bottom-right'
  #
  config.position = 'top-left'

  ###
  # Themes - available options are:
  # 'orange', 'blue', 'green', 'red', 'purple', 'black', 'white'
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
