# frozen_string_literal: true

# Auto-generated helper for <sl-tab-panel> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TAB_PANEL = Set.new([:active]).freeze

  def sl_tab_panel(**args, &block)
    _sl_render("sl-tab-panel", args, BOOLEANS_TAB_PANEL, &block)
  end
end
