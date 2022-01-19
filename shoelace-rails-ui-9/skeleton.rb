module ShoelaceRailsUI
  def sl_skeleton(effect:)
    content_tag("sl-skeleton effect=#{effect}", yield)
  end
end
