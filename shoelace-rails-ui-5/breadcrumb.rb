module ShoelaceRailsUI
  def sl_breadcrumb(&block)
    content_tag(breadcrumb, yield)
  end
end
