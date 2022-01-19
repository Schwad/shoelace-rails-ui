module ShoelaceRailsUI
  def sl_drawer(&block)
    content_tag("sl-drawer", yield)
  end
end
