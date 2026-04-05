# frozen_string_literal: true

# Auto-generated helper for <sl-radio-group> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_RADIO_GROUP = Set.new([:required]).freeze

  def sl_radio_group(**args, &block)
    _sl_render("sl-radio-group", args, BOOLEANS_RADIO_GROUP, &block)
  end
end
