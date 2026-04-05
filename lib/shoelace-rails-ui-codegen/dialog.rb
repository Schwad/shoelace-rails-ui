# frozen_string_literal: true

# Auto-generated helper for <sl-dialog> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_DIALOG = Set.new([:open, :no_header]).freeze

  def sl_dialog(**args, &block)
    _sl_render("sl-dialog", args, BOOLEANS_DIALOG, &block)
  end
end
