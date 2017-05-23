# Ribbonit

**Ribbonit** displays an elegant ribbon to the corner of the page displaying useful information about the application: **Rails environment**, **Rails version**, **Ruby version**.

It is completely inspired from the Github 'fork me' ribbon.

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/521429a8cf91432aba574c69f1385aa2)](https://www.codacy.com/app/anthony-robin/Ribbonit?utm_source=github.com&utm_medium=referral&utm_content=anthony-robin/Ribbonit&utm_campaign=badger)
[![Gem Version](https://badge.fury.io/rb/ribbonit.svg)](https://rubygems.org/gems/ribbonit)
[![Travis CI](https://travis-ci.org/anthony-robin/Ribbonit.svg?branch=master)](https://travis-ci.org/anthony-robin/Ribbonit)
[![Codacy Badge Grade](https://api.codacy.com/project/badge/Grade/521429a8cf91432aba574c69f1385aa2)](https://www.codacy.com/app/anthony-robin/Ribbonit)
[![Codacy Badge Coverage](https://api.codacy.com/project/badge/Coverage/521429a8cf91432aba574c69f1385aa2)](https://www.codacy.com/app/anthony-robin/Ribbonit)
[![Dependency Status](https://gemnasium.com/badges/github.com/anthony-robin/Ribbonit.svg)](https://gemnasium.com/github.com/anthony-robin/Ribbonit)

## Installation

Add this line to your application's Gemfile:

```ruby
# Gemfile
gem 'ribbonit'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:
```shell
$ gem install ribbonit
```

## Usage

1) Run initializer
```shell
$ bin/rails g ribbonit:install
```
This will create a `ribbonit.rb` file in `config/initializers`

2) Import assets
```sass
// application.sass
@import ribbon
```

3) Call ribbon in layout
```slim
/ application.slim
...
body
  = ribbonit
```

## Options
You can customize some options through the initializer. Here are the defaults options:

```ruby
# config/initializers/ribbonit.rb

config.infos_to_display = %i[rails_version ruby_version]

hide_for_small = true # Display ribbon in small devices ?
position = 'top-left' # top-right, bottom-left, bottom-right
sticky = true # stick to page corner ?

# Available colors:
# orange, blue, green, red, purple, black, white
themes = {
  development: 'black',
  staging: 'blue'
}

# Sometimes, people use another name for this environment
staging_name = 'staging'
```

## Screenshots
### Colors
<table>
<tr>
  <td><img src="vendor/assets/images/colors/orange.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/blue.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/green.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/red.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/purple.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/black.png" width="100"></td>
  <td><img src="vendor/assets/images/colors/white.png" width="100"></td>
</tr>
<tr>
  <td>Orange</td>
  <td>Blue</td>
  <td>Green</td>
  <td>Red</td>
  <td>Purple</td>
  <td>Black</td>
  <td>White</td>
</tr>
</table>

### Positions
<table>
<tr>
  <td><img src="vendor/assets/images/colors/blue.png" width="100"></td>
  <td><img src="vendor/assets/images/positions/top-right.png" width="100"></td>
  <td><img src="vendor/assets/images/positions/bottom-right.png" width="100"></td>
  <td><img src="vendor/assets/images/positions/bottom-left.png" width="100"></td>
</tr>
<tr>
  <td>Top/Left</td>
  <td>Top/Right</td>
  <td>Bottom/Right</td>
  <td>Bottom/Left</td>
</tr>
</table>

### Environments
<table>
<tr>
  <td><img src="vendor/assets/images/colors/purple.png" width="100"></td>
  <td><img src="vendor/assets/images/environments/staging.png" width="100"></td>
</tr>
<tr>
  <td>Development</td>
  <td>Staging</td>
</tr>
</table>

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
