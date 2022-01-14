module ShoelaceRailsUI
  def responsive_media(aspect_ratio:, fit:, &block)
    <responsive-media aspect-ratio=#{aspect_ratio}, fit=#{fit}>
      #{block.call}
    </responsive-media>
  end
end
