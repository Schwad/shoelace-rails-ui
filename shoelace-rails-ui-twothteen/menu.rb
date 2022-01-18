module ShoelaceRailsUI
  def menu(&block)
    "
    <menu>
      #{block.call}
    </menu>
    "
  end
end
