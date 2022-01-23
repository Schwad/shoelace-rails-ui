module ShoelaceRailsUI
  def sl_menu_label(**args)
    content_tag("sl-menu-label", yield)
  end
end
