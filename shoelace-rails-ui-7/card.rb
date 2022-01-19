module ShoelaceRailsUI
  def sl_card(&block)
    content_tag("sl-card", yield)
  end
end
