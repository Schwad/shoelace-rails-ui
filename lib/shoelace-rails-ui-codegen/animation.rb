module ShoelaceRailsUI
  def sl_animation(**args, &block)
    content_tag("sl-animation #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:delay] ? "delay=#{args[:delay]}" : ""} #{args[:direction] ? "direction=#{args[:direction]}" : ""} #{args[:duration] ? "duration=#{args[:duration]}" : ""} #{args[:easing] ? "easing=#{args[:easing]}" : ""} #{args[:endDelay] ? "endDelay=#{args[:endDelay]}" : ""} #{args[:fill] ? "fill=#{args[:fill]}" : ""} #{args[:iterations] ? "iterations=#{args[:iterations]}" : ""} #{args[:iterationStart] ? "iterationStart=#{args[:iterationStart]}" : ""} #{args[:keyframes] ? "keyframes=#{args[:keyframes]}" : ""} #{args[:playbackRate] ? "playbackRate=#{args[:playbackRate]}" : ""} #{args[:play] ? " play" : ""}", &block)
  end
end
