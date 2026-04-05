# frozen_string_literal: true

# Auto-generated helper for <sl-alert> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_ALERT = Set.new([:open, :closable]).freeze

  def sl_alert(**args, &block)
    _sl_render("sl-alert", args, BOOLEANS_ALERT, &block)
  end
end
