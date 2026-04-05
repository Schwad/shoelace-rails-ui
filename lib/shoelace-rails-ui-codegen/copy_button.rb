# frozen_string_literal: true

# Auto-generated helper for <sl-copy-button> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_COPY_BUTTON = Set.new([:disabled, :hoist]).freeze

  def sl_copy_button(**args, &block)
    _sl_render("sl-copy-button", args, BOOLEANS_COPY_BUTTON, &block)
  end
end
