# frozen_string_literal: true

# Auto-generated helper for <sl-color-picker> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_COLOR_PICKER = Set.new([:inline, :no_format_toggle, :disabled, :hoist, :opacity, :uppercase, :required]).freeze

  def sl_color_picker(**args, &block)
    _sl_render("sl-color-picker", args, BOOLEANS_COLOR_PICKER, &block)
  end
end
