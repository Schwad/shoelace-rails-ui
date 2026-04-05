# frozen_string_literal: true

# Auto-generated helper for <sl-switch> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_SWITCH = Set.new([:disabled, :checked, :required]).freeze

  def sl_switch(**args, &block)
    _sl_render("sl-switch", args, BOOLEANS_SWITCH, &block)
  end
end
