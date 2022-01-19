module ShoelaceRailsUI
  def sl_skeleton(effect:, &block)
    content_tag("sl-skeleton effect=#{effect}", yield)
  end
end
