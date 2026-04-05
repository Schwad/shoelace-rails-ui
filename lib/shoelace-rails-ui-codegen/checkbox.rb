# frozen_string_literal: true

# Auto-generated helper for <sl-checkbox> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_CHECKBOX = Set.new([:disabled, :checked, :indeterminate, :required]).freeze

  def sl_checkbox(**args, &block)
    _sl_render("sl-checkbox", args, BOOLEANS_CHECKBOX, &block)
  end
end
