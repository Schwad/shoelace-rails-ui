# frozen_string_literal: true

# Auto-generated helper for <sl-details> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_DETAILS = Set.new([:open, :disabled]).freeze

  def sl_details(**args, &block)
    _sl_render("sl-details", args, BOOLEANS_DETAILS, &block)
  end
end
