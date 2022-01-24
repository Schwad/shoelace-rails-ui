module ShoelaceRailsUI
  def sl_resize_observer(**args, &block)
    content_tag("sl-resize-observer #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
