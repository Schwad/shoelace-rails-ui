module ShoelaceRailsUI
  def sl_resize_observer(&block)
    content_tag("resize-observer", yield)
  end
end
