# frozen_string_literal: true

# Auto-generated helper for <sl-select> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_SELECT = Set.new([:multiple, :disabled, :clearable, :open, :hoist, :filled, :pill, :required]).freeze

  def sl_select(**args, &block)
    _sl_render("sl-select", args, BOOLEANS_SELECT, &block)
  end
end
