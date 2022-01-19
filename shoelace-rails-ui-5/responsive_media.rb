module ShoelaceRailsUI
  def sl_responsive_media(aspect_ratio:, fit:, &block)
    content_tag(responsive-media aspect-ratio=#{aspect_ratio}, fit=#{fit}, yield)
  end
end
