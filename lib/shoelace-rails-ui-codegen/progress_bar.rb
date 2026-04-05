# frozen_string_literal: true

# Auto-generated helper for <sl-progress-bar> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_PROGRESS_BAR = Set.new([:indeterminate]).freeze

  def sl_progress_bar(**args, &block)
    _sl_render("sl-progress-bar", args, BOOLEANS_PROGRESS_BAR, &block)
  end
end
