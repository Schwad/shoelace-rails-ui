# frozen_string_literal: true

# Auto-generated helper for <sl-tooltip> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TOOLTIP = Set.new([:disabled, :open, :hoist]).freeze

  def sl_tooltip(**args, &block)
    _sl_render("sl-tooltip", args, BOOLEANS_TOOLTIP, &block)
  end
end
