module ShoelaceRailsUI
  def skeleton(effect:, &block)
    <skeleton effect=#{effect}>
      #{block.call}
    </skeleton>
  end
end
