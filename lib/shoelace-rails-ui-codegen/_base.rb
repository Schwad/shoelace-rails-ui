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
