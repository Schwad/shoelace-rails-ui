module ShoelaceRailsUI
  def sl_divider(**args, &block)
    content_tag("sl-divider #{args[:vertical] ? " vertical" : ""}", &block)
  end
end
