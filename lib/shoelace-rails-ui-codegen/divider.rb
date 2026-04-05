# frozen_string_literal: true

# Auto-generated helper for <sl-divider> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_DIVIDER = Set.new([:vertical]).freeze

  def sl_divider(**args, &block)
    _sl_render("sl-divider", args, BOOLEANS_DIVIDER, &block)
  end
end
