module ShoelaceRailsUI
  def sl_menu(&block)
    content_tag("sl-menu", yield)
  end
end
