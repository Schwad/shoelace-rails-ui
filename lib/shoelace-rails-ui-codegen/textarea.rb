# frozen_string_literal: true

# Auto-generated helper for <sl-textarea> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TEXTAREA = Set.new([:filled, :disabled, :readonly, :required, :autofocus, :spellcheck]).freeze

  def sl_textarea(**args, &block)
    _sl_render("sl-textarea", args, BOOLEANS_TEXTAREA, &block)
  end
end
