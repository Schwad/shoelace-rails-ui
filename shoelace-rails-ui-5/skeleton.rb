module ShoelaceRailsUI
  def sl_skeleton(effect:, &block)
    content_tag(skeleton effect=#{effect}, yield)
  end
end
