module ShoelaceRailsUI
  def sl_menu_label(**args, &block)
    content_tag("sl-menu-label", &block)
  end
end
