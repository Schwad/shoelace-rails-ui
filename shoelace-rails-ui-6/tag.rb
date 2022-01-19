module ShoelaceRailsUI
  def sl_tag(&block)
    content_tag("tag", yield)
  end
end
