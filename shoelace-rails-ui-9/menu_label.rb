module ShoelaceRailsUI
  def sl_menu_label()
    content_tag("sl-menu-label", yield)
  end
end
