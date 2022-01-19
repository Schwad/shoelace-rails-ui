module ShoelaceRailsUI
  def sl_mutation_observer(&block)
    content_tag(mutation-observer, yield)
  end
end
