# config/initializers/haml.rb

# Be sure to restart your server when you modify this file.

# Haml is a markup language that’s used to cleanly and simply
# describe the HTML of any web document without the use of inline code.
Haml::Template.options[:ugly] = false
Haml::Template.options[:cdata] = true
Haml::Template.options[:format] = :html5
Haml::Template.options[:encoding] = "UTF-8"
Haml::Template.options[:attr_wrapper] = '"'
