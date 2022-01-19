module ShoelaceRailsUI
  def sl_tag(&block)
    content_tag("sl-tag", yield)
  end
end
