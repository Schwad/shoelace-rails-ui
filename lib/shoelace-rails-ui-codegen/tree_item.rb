# frozen_string_literal: true

# Auto-generated helper for <sl-tree-item> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TREE_ITEM = Set.new([:expanded, :selected, :disabled, :lazy]).freeze

  def sl_tree_item(**args, &block)
    _sl_render("sl-tree-item", args, BOOLEANS_TREE_ITEM, &block)
  end
end
