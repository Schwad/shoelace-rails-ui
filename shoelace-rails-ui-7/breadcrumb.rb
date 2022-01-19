module ShoelaceRailsUI
  def sl_breadcrumb(&block)
    content_tag("sl-breadcrumb", yield)
  end
end
