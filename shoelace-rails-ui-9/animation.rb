module ShoelaceRailsUI
  def sl_animation(direction:, fill:)
    content_tag("sl-animation direction=#{direction}, fill=#{fill}", yield)
  end
end
