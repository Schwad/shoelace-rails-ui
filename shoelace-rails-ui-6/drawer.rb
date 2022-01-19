module ShoelaceRailsUI
  def sl_drawer(&block)
    content_tag("drawer", yield)
  end
end
