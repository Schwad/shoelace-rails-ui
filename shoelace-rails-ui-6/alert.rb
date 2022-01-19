module ShoelaceRailsUI
  def sl_alert(&block)
    content_tag("alert", yield)
  end
end
