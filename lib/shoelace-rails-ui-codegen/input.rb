# frozen_string_literal: true

# Auto-generated helper for <sl-input> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_INPUT = Set.new([:filled, :pill, :clearable, :disabled, :readonly, :password_toggle, :password_visible, :no_spin_buttons, :required, :autofocus, :spellcheck]).freeze

  def sl_input(**args, &block)
    _sl_render("sl-input", args, BOOLEANS_INPUT, &block)
  end
end
