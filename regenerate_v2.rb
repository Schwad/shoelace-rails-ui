# frozen_string_literal: true
#
# Shoelace Rails UI - Component Code Generator v2
# Generates clean Ruby helper methods for all Shoelace 2.20.1 web components.
#
# Usage: ruby regenerate_v2.rb
#
# This replaces the original regenerate.rb which parsed TypeScript .d.ts files.
# Component definitions are sourced from the Shoelace 2.20.1 custom-elements.json manifest.

require 'fileutils'

SHOELACE_VERSION = "2.20.1"
OUTPUT_DIR = "lib/shoelace-rails-ui-codegen"

# Complete component definitions from Shoelace 2.20.1 custom-elements.json
COMPONENTS = {
  "alert" => {
    booleans: %w[open closable],
    attrs: %w[variant duration countdown]
  },
  "animated-image" => {
    booleans: %w[play],
    attrs: %w[src alt]
  },
  "animation" => {
    booleans: %w[play],
    attrs: %w[name delay direction duration easing end-delay fill iterations iteration-start playback-rate]
  },
  "avatar" => {
    booleans: [],
    attrs: %w[image label initials loading shape]
  },
  "badge" => {
    booleans: %w[pill pulse],
    attrs: %w[variant]
  },
  "breadcrumb" => {
    booleans: [],
    attrs: %w[label]
  },
  "breadcrumb-item" => {
    booleans: [],
    attrs: %w[href target rel]
  },
  "button" => {
    booleans: %w[caret disabled loading outline pill circle formnovalidate],
    attrs: %w[title variant size type name value href target rel download form formaction formenctype formmethod formtarget]
  },
  "button-group" => {
    booleans: [],
    attrs: %w[label]
  },
  "card" => {
    booleans: [],
    attrs: []
  },
  "carousel" => {
    booleans: %w[loop navigation pagination autoplay mouse-dragging],
    attrs: %w[autoplay-interval slides-per-page slides-per-move orientation]
  },
  "carousel-item" => {
    booleans: [],
    attrs: []
  },
  "checkbox" => {
    booleans: %w[disabled checked indeterminate required],
    attrs: %w[title name value size form help-text]
  },
  "color-picker" => {
    booleans: %w[inline no-format-toggle disabled hoist opacity uppercase required],
    attrs: %w[value label format size name swatches form]
  },
  "copy-button" => {
    booleans: %w[disabled hoist],
    attrs: %w[value from copy-label success-label error-label feedback-duration tooltip-placement]
  },
  "details" => {
    booleans: %w[open disabled],
    attrs: %w[summary]
  },
  "dialog" => {
    booleans: %w[open no-header],
    attrs: %w[label]
  },
  "divider" => {
    booleans: %w[vertical],
    attrs: []
  },
  "drawer" => {
    booleans: %w[open contained no-header],
    attrs: %w[label placement]
  },
  "dropdown" => {
    booleans: %w[open disabled stay-open-on-select hoist],
    attrs: %w[placement distance skidding sync]
  },
  "format-bytes" => {
    booleans: [],
    attrs: %w[value unit display]
  },
  "format-date" => {
    booleans: [],
    attrs: %w[date weekday era year month day hour minute second time-zone-name time-zone hour-format]
  },
  "format-number" => {
    booleans: %w[no-grouping],
    attrs: %w[value type currency currency-display minimum-integer-digits minimum-fraction-digits maximum-fraction-digits minimum-significant-digits maximum-significant-digits]
  },
  "icon" => {
    booleans: [],
    attrs: %w[name src label library]
  },
  "icon-button" => {
    booleans: %w[disabled],
    attrs: %w[name library src href target download label]
  },
  "image-comparer" => {
    booleans: [],
    attrs: %w[position]
  },
  "include" => {
    booleans: %w[allow-scripts],
    attrs: %w[src mode]
  },
  "input" => {
    booleans: %w[filled pill clearable disabled readonly password-toggle password-visible no-spin-buttons required autofocus spellcheck],
    attrs: %w[title type name value size label help-text placeholder form pattern minlength maxlength min max step autocapitalize autocorrect autocomplete enterkeyhint inputmode]
  },
  "menu" => {
    booleans: [],
    attrs: []
  },
  "menu-item" => {
    booleans: %w[checked loading disabled],
    attrs: %w[type value]
  },
  "menu-label" => {
    booleans: [],
    attrs: []
  },
  "mutation-observer" => {
    booleans: %w[attr-old-value char-data char-data-old-value child-list disabled],
    attrs: %w[attr]
  },
  "option" => {
    booleans: %w[disabled],
    attrs: %w[value]
  },
  "popup" => {
    booleans: %w[active arrow flip shift hover-bridge],
    attrs: %w[anchor placement strategy distance skidding arrow-placement arrow-padding flip-fallback-placements flip-fallback-strategy flip-boundary flip-padding shift-boundary shift-padding auto-size sync auto-size-boundary auto-size-padding]
  },
  "progress-bar" => {
    booleans: %w[indeterminate],
    attrs: %w[value label]
  },
  "progress-ring" => {
    booleans: [],
    attrs: %w[value label]
  },
  "qr-code" => {
    booleans: [],
    attrs: %w[value label size fill background radius error-correction]
  },
  "radio" => {
    booleans: %w[disabled],
    attrs: %w[value size]
  },
  "radio-button" => {
    booleans: %w[disabled pill],
    attrs: %w[value size]
  },
  "radio-group" => {
    booleans: %w[required],
    attrs: %w[label help-text name value size form]
  },
  "range" => {
    booleans: %w[disabled],
    attrs: %w[title name value label help-text min max step tooltip form]
  },
  "rating" => {
    booleans: %w[readonly disabled],
    attrs: %w[label value max precision]
  },
  "relative-time" => {
    booleans: %w[sync],
    attrs: %w[date format numeric]
  },
  "resize-observer" => {
    booleans: %w[disabled],
    attrs: []
  },
  "select" => {
    booleans: %w[multiple disabled clearable open hoist filled pill required],
    attrs: %w[name value size placeholder max-options-visible label placement help-text form]
  },
  "skeleton" => {
    booleans: [],
    attrs: %w[effect]
  },
  "spinner" => {
    booleans: [],
    attrs: []
  },
  "split-panel" => {
    booleans: %w[vertical disabled],
    attrs: %w[position position-in-pixels primary snap snap-threshold]
  },
  "switch" => {
    booleans: %w[disabled checked required],
    attrs: %w[title name value size form help-text]
  },
  "tab" => {
    booleans: %w[active closable disabled],
    attrs: %w[panel]
  },
  "tab-group" => {
    booleans: %w[no-scroll-controls fixed-scroll-controls],
    attrs: %w[placement activation]
  },
  "tab-panel" => {
    booleans: %w[active],
    attrs: %w[name]
  },
  "tag" => {
    booleans: %w[pill removable],
    attrs: %w[variant size]
  },
  "textarea" => {
    booleans: %w[filled disabled readonly required autofocus spellcheck],
    attrs: %w[title name value size label help-text placeholder rows resize form minlength maxlength autocapitalize autocorrect autocomplete enterkeyhint inputmode]
  },
  "tooltip" => {
    booleans: %w[disabled open hoist],
    attrs: %w[content placement distance skidding trigger]
  },
  "tree" => {
    booleans: [],
    attrs: %w[selection]
  },
  "tree-item" => {
    booleans: %w[expanded selected disabled lazy],
    attrs: []
  },
  "visually-hidden" => {
    booleans: [],
    attrs: []
  }
}.freeze

def ruby_method_name(component_name)
  "sl_#{component_name.tr('-', '_')}"
end

def ruby_file_name(component_name)
  component_name.tr('-', '_')
end

def ruby_symbol(attr_name)
  attr_name.tr('-', '_')
end

def generate_component(name, definition)
  booleans = definition[:booleans]
  attrs = definition[:attrs]

  boolean_symbols = booleans.map { |b| ":#{ruby_symbol(b)}" }.join(", ")
  method_name = ruby_method_name(name)
  tag_name = "sl-#{name}"

  <<~RUBY
    # frozen_string_literal: true

    # Auto-generated helper for <#{tag_name}> (Shoelace #{SHOELACE_VERSION})
    # Do not edit manually. Regenerate with: ruby regenerate_v2.rb

    module ShoelaceRailsUI
      BOOLEANS_#{ruby_file_name(name).upcase} = Set.new([#{boolean_symbols}]).freeze

      def #{method_name}(**args, &block)
        _sl_render("#{tag_name}", args, BOOLEANS_#{ruby_file_name(name).upcase}, &block)
      end
    end
  RUBY
end

def generate_base_helper
  <<~RUBY
    # frozen_string_literal: true

    # Shared rendering logic for all Shoelace component helpers.
    # Do not edit manually. Regenerate with: ruby regenerate_v2.rb

    require "set"

    module ShoelaceRailsUI
      private

      def _sl_render(tag_name, args, boolean_attrs, &block)
        html_attrs = {}
        args.each do |key, value|
          attr_name = key.to_s.tr('_', '-')
          if boolean_attrs.include?(key)
            html_attrs[attr_name] = attr_name if value
          else
            html_attrs[attr_name] = value unless value.nil?
          end
        end
        if block_given?
          content_tag(tag_name, html_attrs, &block)
        else
          content_tag(tag_name, nil, html_attrs)
        end
      end
    end
  RUBY
end

def generate_loader
  lines = ['# frozen_string_literal: true', '', '# Auto-generated loader for all Shoelace component helpers.', '# Do not edit manually. Regenerate with: ruby regenerate_v2.rb', '', 'require_relative "shoelace-rails-ui-codegen/_base"']
  COMPONENTS.keys.sort.each do |name|
    lines << "require_relative \"shoelace-rails-ui-codegen/#{ruby_file_name(name)}\""
  end
  lines.join("\n") + "\n"
end

# --- Main ---

puts "Generating Shoelace #{SHOELACE_VERSION} Rails helpers..."

# Clean and recreate output directory
FileUtils.rm_rf(OUTPUT_DIR)
FileUtils.mkdir_p(OUTPUT_DIR)

# Generate base helper
File.write("#{OUTPUT_DIR}/_base.rb", generate_base_helper)
puts "  Generated _base.rb"

# Generate each component
COMPONENTS.each do |name, definition|
  filename = "#{OUTPUT_DIR}/#{ruby_file_name(name)}.rb"
  File.write(filename, generate_component(name, definition))
  puts "  Generated #{ruby_file_name(name)}.rb"
end

# Generate loader
File.write("lib/codegen.rb", generate_loader)
puts "  Generated lib/codegen.rb"

puts "\nDone! Generated #{COMPONENTS.size} component helpers + base module."
puts "Shoelace version: #{SHOELACE_VERSION}"
