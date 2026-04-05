# frozen_string_literal: true

# Auto-generated helper for <sl-option> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_OPTION = Set.new([:disabled]).freeze

  def sl_option(**args, &block)
    _sl_render("sl-option", args, BOOLEANS_OPTION, &block)
  end
end
