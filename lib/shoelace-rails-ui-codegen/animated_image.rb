# frozen_string_literal: true

# Auto-generated helper for <sl-animated-image> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_ANIMATED_IMAGE = Set.new([:play]).freeze

  def sl_animated_image(**args, &block)
    _sl_render("sl-animated-image", args, BOOLEANS_ANIMATED_IMAGE, &block)
  end
end
