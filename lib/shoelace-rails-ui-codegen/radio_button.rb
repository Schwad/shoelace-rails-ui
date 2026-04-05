# frozen_string_literal: true

# Auto-generated helper for <sl-radio-button> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_RADIO_BUTTON = Set.new([:disabled, :pill]).freeze

  def sl_radio_button(**args, &block)
    _sl_render("sl-radio-button", args, BOOLEANS_RADIO_BUTTON, &block)
  end
end
