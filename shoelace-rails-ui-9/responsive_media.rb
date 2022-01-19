module ShoelaceRailsUI
  def sl_responsive_media(aspect_ratio:, fit:)
    content_tag("sl-responsive-media aspect-ratio=#{aspect_ratio}, fit=#{fit}", yield)
  end
end
