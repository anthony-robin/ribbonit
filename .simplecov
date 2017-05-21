require 'codacy-coverage'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    Codacy::Formatter
])

SimpleCov.start do
  add_group 'lib', 'lib'
end
