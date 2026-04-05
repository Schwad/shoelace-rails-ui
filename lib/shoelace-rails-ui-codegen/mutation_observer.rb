# frozen_string_literal: true

# Auto-generated helper for <sl-mutation-observer> (Shoelace 2.20.1)
# Do not edit manually. Regenerate with: ruby regenerate_v2.rb

module ShoelaceRailsUI
  BOOLEANS_MUTATION_OBSERVER = Set.new([:attr_old_value, :char_data, :char_data_old_value, :child_list, :disabled]).freeze

  def sl_mutation_observer(**args, &block)
    _sl_render("sl-mutation-observer", args, BOOLEANS_MUTATION_OBSERVER, &block)
  end
end
