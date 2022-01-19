module ShoelaceRailsUI
  def sl_badge(&block)
    content_tag("sl-badge", yield)
  end
end
