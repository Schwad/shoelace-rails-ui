module ShoelaceRailsUI
  def sl_menu()
    content_tag("sl-menu", yield)
  end
end
