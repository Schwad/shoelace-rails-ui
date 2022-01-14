module ShoelaceRailsUI
  def checkbox(name:, value:, &block)
    <checkbox name=#{name}, value=#{value}>
      #{block.call}
    </checkbox>
  end
end
