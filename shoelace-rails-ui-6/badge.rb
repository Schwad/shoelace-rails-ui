module ShoelaceRailsUI
  def sl_badge(&block)
    content_tag("badge", yield)
  end
end
