module ShoelaceRailsUI
  def sl_divider(**args)
    content_tag("sl-divider #{args[:vertical] ? " vertical" : ""}", yield)
  end
end
