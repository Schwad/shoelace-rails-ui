# frozen_string_literal: true

# Auto-generated helper for <sl-range> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_RANGE = Set.new([:disabled]).freeze

  def sl_range(**args, &block)
    _sl_render("sl-range", args, BOOLEANS_RANGE, &block)
  end
end
