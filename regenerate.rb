# frozen_string_literal: true
# regex capture name of method against `@customElement('sl-menu-item')`
# regex capture all props from `@csspart suffix - The suffix container.`, possibly `slot`

# TEST: do some vanilla ERB generation and see what you get.

# Support
def formatted_vals(vals)
  ary = []
  vals.map(&:first).each do |prop|
    # E.g.
    #{args[:variant] ? "variant=#{args[:variant]}" : ""} 
    prop = prop[0..-2]
    ary << " \#\{args[:#{prop}] ? \"#{prop.gsub("_", "-")}=\#\{args[:#{prop}]\}\" : \"\"}"
  end
  ary.join("")
end

def formatted_bools(bools)
  ary = []
  bools.map(&:first).each do |bool|
    bool = bool[0..-2]
    ary << " \#\{args[:#{bool}] ? \" #{bool.gsub("_", "-")}\" : \"\"\}"
  end
  ary.join("")
end

# Initialize our new directory
require 'fileutils'

VERSION = ARGV[0]
SL_RAILS_UI_DIR = FileUtils.mkdir_p("shoelace-rails-ui-#{VERSION}")[0]

# Iterate through sourcecode and codegen our wrappers

SL_DIR = 'remote-src/2.0.0.beta64/shoelace-next/dist/components'

Dir.each_child(SL_DIR) do |child|
  file_text = File.open("#{SL_DIR}/#{child}/#{child}.d.ts").readlines.join('')
  elements = file_text.scan(/\s+(\w+): (.*);/)
  elements.reject!{|el| ["styles", "base"].include?(el[0]) }
  elements = elements.map{ |el| ["#{el[0].gsub("-", "_")}:", el[1]] }
  bools, vals = elements.partition{|el| el[1] == "boolean"}
  # Rewrite
  wrapper_method = <<~METHOD
    module ShoelaceRailsUI
      def sl_#{child.gsub("-", "_")}(**args)
        content_tag(\"sl-#{child}#{formatted_vals(vals)}#{formatted_bools(bools)}\", yield)
      end
    end
  METHOD


  File.open("#{SL_RAILS_UI_DIR}/#{child.gsub("-", "_")}.rb", 'w') { |f| f.write(wrapper_method) }
  File.open("shoelace-rails-ui-#{ARGV[0]}.rb", 'a') { |f| f.puts "require_relative \"#{SL_RAILS_UI_DIR}/#{child.gsub("-", "_")}\""}
rescue => e
end

# def sl_drawer(prop_one:, prop_two:, &block)
#   "
#     <sl-drawer prop-one=#{prop_one},prop-two=#{prop_two}>
#      #{block.call}
#     </sl-drawer>
#   "
# end
