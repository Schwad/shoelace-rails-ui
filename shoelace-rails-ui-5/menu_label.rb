module ShoelaceRailsUI
  def sl_menu_label(&block)
    content_tag(menu-label, yield)
  end
end
