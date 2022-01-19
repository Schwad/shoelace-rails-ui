module ShoelaceRailsUI
  def sl_animated_image(src:, alt:, &block)
    content_tag(animated-image src=#{src}, alt=#{alt}, yield)
  end
end
