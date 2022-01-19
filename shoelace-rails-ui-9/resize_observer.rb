module ShoelaceRailsUI
  def sl_resize_observer()
    content_tag("sl-resize-observer", yield)
  end
end
