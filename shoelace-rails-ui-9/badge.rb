module ShoelaceRailsUI
  def sl_badge()
    content_tag("sl-badge", yield)
  end
end
