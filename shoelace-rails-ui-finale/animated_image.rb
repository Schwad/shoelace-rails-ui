module ShoelaceRailsUI
  def animated_image(src:, alt:, &block)
    <animated-image ["src=\#{src}", "alt=\#{alt}"]
  end
end
