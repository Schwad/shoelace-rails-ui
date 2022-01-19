module ShoelaceRailsUI
  def sl_menu_item(&block)
    content_tag("sl-menu-item", yield)
  end
end
