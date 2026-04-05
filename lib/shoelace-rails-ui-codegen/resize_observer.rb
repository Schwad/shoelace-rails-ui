# frozen_string_literal: true

# Auto-generated helper for <sl-resize-observer> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_RESIZE_OBSERVER = Set.new([:disabled]).freeze

  def sl_resize_observer(**args, &block)
    _sl_render("sl-resize-observer", args, BOOLEANS_RESIZE_OBSERVER, &block)
  end
end
