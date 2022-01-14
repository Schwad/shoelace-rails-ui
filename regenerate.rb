# frozen_string_literal: true
# regex capture name of method against `@customElement('sl-menu-item')`
# regex capture all props from `@csspart suffix - The suffix container.`, possibly `slot`

# TEST: do some vanilla ERB generation and see what you get.

# Initialize our new directory
require 'fileutils'

VERSION = ARGV[0]
SL_RAILS_UI_DIR = FileUtils.mkdir_p("shoelace-rails-ui-#{VERSION}")[0]

# Iterate through sourcecode and codegen our wrappers

SL_DIR = 'remote-src/2.0.0.beta64/shoelace-next/src/components'

Dir.each_child(SL_DIR) do |child|
  file_text = File.open("#{SL_DIR}/#{child}/#{child}.ts").readlines.join('')
  component = /customElement\('(sl-.*?'\))/.match(file_text)[1]
  properties = file_text.scan(/property\({ attribute: '(.*)?' }\)|property\(\) (.*)?:/)

  new_child = child.gsub('-', '_')
  new_properties = properties.flatten.compact.uniq.map { |prop| "#{prop.gsub("-", "_")}:" }
  wrapper_method = <<~METHOD
    module ShoelaceRailsUI
      def #{new_child}(#{[new_properties.join(', '), "&block"].compact.join(", ")})
        \"
        <#{child} #{properties.flatten.compact.uniq.map { |prop| "#{prop}=\#\{#{prop.gsub("-","_")}\}" }.join(", ")}>
          \#\{block.call\}
        </#{child}>
        \"
      end
    end
  METHOD

  File.open("#{SL_RAILS_UI_DIR}/#{new_child}.rb", 'w') { |f| f.write(wrapper_method) }
  File.open('shoelace-rails-ui.rb', 'a') { |f| f.puts "require_relative \"#{SL_RAILS_UI_DIR}/#{new_child}\""}
rescue => e
  require 'pry'; binding.pry
end

# def sl_drawer(prop_one:, prop_two:, &block)
#   "
#     <sl-drawer prop-one=#{prop_one},prop-two=#{prop_two}>
#      #{block.call}
#     </sl-drawer>
#   "
# end
