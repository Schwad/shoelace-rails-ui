module ShoelaceRailsUI
  def mutation_observer(, &block)
    <mutation-observer >
      #{block.call}
    </mutation-observer>
  end
end
