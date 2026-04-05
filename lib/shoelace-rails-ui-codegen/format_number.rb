# frozen_string_literal: true

# Auto-generated helper for <sl-format-number> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_FORMAT_NUMBER = Set.new([:no_grouping]).freeze

  def sl_format_number(**args, &block)
    _sl_render("sl-format-number", args, BOOLEANS_FORMAT_NUMBER, &block)
  end
end
