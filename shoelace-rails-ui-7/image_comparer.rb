module ShoelaceRailsUI
  def sl_image_comparer(&block)
    content_tag("sl-image-comparer", yield)
  end
end
