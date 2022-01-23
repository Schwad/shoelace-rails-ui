module ShoelaceRailsUI
  def sl_card(**args)
    content_tag("sl-card", yield)
  end
end
