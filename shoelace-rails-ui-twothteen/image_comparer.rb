module ShoelaceRailsUI
  def image_comparer(&block)
    "
    <image-comparer>
      #{block.call}
    </image-comparer>
    "
  end
end
