# frozen_string_literal: true

# Auto-generated helper for <sl-button> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_BUTTON = Set.new([:caret, :disabled, :loading, :outline, :pill, :circle, :formnovalidate]).freeze

  def sl_button(**args, &block)
    _sl_render("sl-button", args, BOOLEANS_BUTTON, &block)
  end
end
