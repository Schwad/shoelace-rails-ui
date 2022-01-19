module ShoelaceRailsUI
  def sl_breadcrumb_item(href:, target:, rel:, &block)
    content_tag("breadcrumb-item href=#{href}, target=#{target}, rel=#{rel}", yield)
  end
end
