# frozen_string_literal: true

# Auto-generated helper for <sl-split-panel> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_SPLIT_PANEL = Set.new([:vertical, :disabled]).freeze

  def sl_split_panel(**args, &block)
    _sl_render("sl-split-panel", args, BOOLEANS_SPLIT_PANEL, &block)
  end
end
