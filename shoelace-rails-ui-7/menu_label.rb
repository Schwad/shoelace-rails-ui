module ShoelaceRailsUI
  def sl_menu_label(&block)
    content_tag("sl-menu-label", yield)
  end
end
