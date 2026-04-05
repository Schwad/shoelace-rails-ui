# frozen_string_literal: true

# Auto-generated helper for <sl-dropdown> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_DROPDOWN = Set.new([:open, :disabled, :stay_open_on_select, :hoist]).freeze

  def sl_dropdown(**args, &block)
    _sl_render("sl-dropdown", args, BOOLEANS_DROPDOWN, &block)
  end
end
