module ShoelaceRailsUI
  def menu_item(, &block)
    "
    <menu-item >
      #{block.call}
    </menu-item>
    "
  end
end
