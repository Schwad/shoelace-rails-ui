module ShoelaceRailsUI
  def sl_resize_observer(**args)
    content_tag("sl-resize-observer #{args[:disabled] ? " disabled" : ""}", yield)
  end
end
