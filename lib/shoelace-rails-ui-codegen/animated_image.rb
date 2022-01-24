module ShoelaceRailsUI
  def sl_animated_image(**args, &block)
    content_tag("sl-animated-image #{args[:frozenFrame] ? "frozenFrame=#{args[:frozenFrame]}" : ""} #{args[:animatedImage] ? "animatedImage=#{args[:animatedImage]}" : ""} #{args[:src] ? "src=#{args[:src]}" : ""} #{args[:alt] ? "alt=#{args[:alt]}" : ""} #{args[:isLoaded] ? " isLoaded" : ""} #{args[:play] ? " play" : ""}", &block)
  end
end
