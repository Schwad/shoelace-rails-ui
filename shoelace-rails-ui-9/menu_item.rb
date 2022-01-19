module ShoelaceRailsUI
  def sl_menu_item()
    content_tag("sl-menu-item", yield)
  end
end
