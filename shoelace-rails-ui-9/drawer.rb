module ShoelaceRailsUI
  def sl_drawer()
    content_tag("sl-drawer", yield)
  end
end
