module ShoelaceRailsUI
  def sl_breadcrumb_item(**args, &block)
    content_tag("sl-breadcrumb-item #{args[:href] ? "href=#{args[:href]}" : ""} #{args[:target] ? "target=#{args[:target]}" : ""} #{args[:rel] ? "rel=#{args[:rel]}" : ""}", &block)
  end
end
