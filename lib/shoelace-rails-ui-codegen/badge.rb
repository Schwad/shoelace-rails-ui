# frozen_string_literal: true

# Auto-generated helper for <sl-badge> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_BADGE = Set.new([:pill, :pulse]).freeze

  def sl_badge(**args, &block)
    _sl_render("sl-badge", args, BOOLEANS_BADGE, &block)
  end
end
