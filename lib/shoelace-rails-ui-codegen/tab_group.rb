# frozen_string_literal: true

# Auto-generated helper for <sl-tab-group> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TAB_GROUP = Set.new([:no_scroll_controls, :fixed_scroll_controls]).freeze

  def sl_tab_group(**args, &block)
    _sl_render("sl-tab-group", args, BOOLEANS_TAB_GROUP, &block)
  end
end
