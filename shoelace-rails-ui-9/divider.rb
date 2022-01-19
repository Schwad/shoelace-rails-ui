module ShoelaceRailsUI
  def sl_divider()
    content_tag("sl-divider", yield)
  end
end
