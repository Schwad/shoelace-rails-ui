module ShoelaceRailsUI
  def sl_mutation_observer()
    content_tag("sl-mutation-observer", yield)
  end
end
