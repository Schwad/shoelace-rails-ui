module ShoelaceRailsUI
  def sl_animation(direction:, fill:, &block)
    content_tag(animation direction=#{direction}, fill=#{fill}, yield)
  end
end
