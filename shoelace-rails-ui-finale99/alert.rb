module ShoelaceRailsUI
  def alert(, &block)
    "
    <alert >
      #{block.call}
    </alert>
    "
  end
end
