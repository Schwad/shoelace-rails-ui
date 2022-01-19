module ShoelaceRailsUI
  def sl_menu_item(&block)
    content_tag("menu-item", yield)
  end
end
