module ShoelaceRailsUI
  def drawer(, &block)
    <drawer >
      #{block.call}
    </drawer>
  end
end
