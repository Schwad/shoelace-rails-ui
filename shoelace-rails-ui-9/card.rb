module ShoelaceRailsUI
  def sl_card()
    content_tag("sl-card", yield)
  end
end
