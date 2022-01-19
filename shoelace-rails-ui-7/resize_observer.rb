module ShoelaceRailsUI
  def sl_resize_observer(&block)
    content_tag("sl-resize-observer", yield)
  end
end
