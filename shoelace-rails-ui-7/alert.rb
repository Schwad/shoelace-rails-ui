module ShoelaceRailsUI
  def sl_alert(&block)
    content_tag("sl-alert", yield)
  end
end
