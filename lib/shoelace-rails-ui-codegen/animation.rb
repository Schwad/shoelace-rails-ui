# frozen_string_literal: true

# Auto-generated helper for <sl-animation> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_ANIMATION = Set.new([:play]).freeze

  def sl_animation(**args, &block)
    _sl_render("sl-animation", args, BOOLEANS_ANIMATION, &block)
  end
end
