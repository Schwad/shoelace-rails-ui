module ShoelaceRailsUI
  def sl_alert()
    content_tag("sl-alert", yield)
  end
end
