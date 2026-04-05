# frozen_string_literal: true

# Auto-generated helper for <sl-tag> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_TAG = Set.new([:pill, :removable]).freeze

  def sl_tag(**args, &block)
    _sl_render("sl-tag", args, BOOLEANS_TAG, &block)
  end
end
