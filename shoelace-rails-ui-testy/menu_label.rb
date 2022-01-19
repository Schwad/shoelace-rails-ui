module ShoelaceRailsUI
  def menu_label(&block)
    "
    <menu-label>
      #{block.call}
    </menu-label>
    "
  end
end
