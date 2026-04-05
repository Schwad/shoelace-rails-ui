# frozen_string_literal: true

# Auto-generated helper for <sl-drawer> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_DRAWER = Set.new([:open, :contained, :no_header]).freeze

  def sl_drawer(**args, &block)
    _sl_render("sl-drawer", args, BOOLEANS_DRAWER, &block)
  end
end
