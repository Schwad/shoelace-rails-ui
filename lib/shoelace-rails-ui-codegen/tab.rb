# frozen_string_literal: true

# Auto-generated helper for <sl-tab> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TAB = Set.new([:active, :closable, :disabled]).freeze

  def sl_tab(**args, &block)
    _sl_render("sl-tab", args, BOOLEANS_TAB, &block)
  end
end
