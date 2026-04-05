# frozen_string_literal: true

# Auto-generated helper for <sl-popup> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_POPUP = Set.new([:active, :arrow, :flip, :shift, :hover_bridge]).freeze

  def sl_popup(**args, &block)
    _sl_render("sl-popup", args, BOOLEANS_POPUP, &block)
  end
end
