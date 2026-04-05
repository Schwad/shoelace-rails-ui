# frozen_string_literal: true

# Auto-generated helper for <sl-rating> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_RATING = Set.new([:readonly, :disabled]).freeze

  def sl_rating(**args, &block)
    _sl_render("sl-rating", args, BOOLEANS_RATING, &block)
  end
end
