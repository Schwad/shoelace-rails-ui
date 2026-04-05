# frozen_string_literal: true

# Auto-generated helper for <sl-menu-item> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_MENU_ITEM = Set.new([:checked, :loading, :disabled]).freeze

  def sl_menu_item(**args, &block)
    _sl_render("sl-menu-item", args, BOOLEANS_MENU_ITEM, &block)
  end
end
