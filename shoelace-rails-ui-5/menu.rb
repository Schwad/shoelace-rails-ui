module ShoelaceRailsUI
  def sl_menu(&block)
    content_tag(menu, yield)
  end
end
