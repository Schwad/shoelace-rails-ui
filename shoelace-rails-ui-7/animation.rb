module ShoelaceRailsUI
  def sl_animation(direction:, fill:, &block)
    content_tag("sl-animation direction=#{direction}, fill=#{fill}", yield)
  end
end
