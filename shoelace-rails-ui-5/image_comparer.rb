module ShoelaceRailsUI
  def sl_image_comparer(&block)
    content_tag(image-comparer, yield)
  end
end
