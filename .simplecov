SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter
])

SimpleCov.start do
  add_group 'lib', 'lib'
end
