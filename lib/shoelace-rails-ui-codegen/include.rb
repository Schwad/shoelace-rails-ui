# frozen_string_literal: true

# Auto-generated helper for <sl-include> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_INCLUDE = Set.new([:allow_scripts]).freeze

  def sl_include(**args, &block)
    _sl_render("sl-include", args, BOOLEANS_INCLUDE, &block)
  end
end
