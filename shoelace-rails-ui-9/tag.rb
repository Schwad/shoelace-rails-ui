module ShoelaceRailsUI
  def sl_tag()
    content_tag("sl-tag", yield)
  end
end
