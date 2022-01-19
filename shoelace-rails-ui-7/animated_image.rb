module ShoelaceRailsUI
  def sl_animated_image(src:, alt:, &block)
    content_tag("sl-animated-image src=#{src}, alt=#{alt}", yield)
  end
end
