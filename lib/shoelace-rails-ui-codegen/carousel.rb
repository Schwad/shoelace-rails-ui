# frozen_string_literal: true

# Auto-generated helper for <sl-carousel> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_CAROUSEL = Set.new([:loop, :navigation, :pagination, :autoplay, :mouse_dragging]).freeze

  def sl_carousel(**args, &block)
    _sl_render("sl-carousel", args, BOOLEANS_CAROUSEL, &block)
  end
end
