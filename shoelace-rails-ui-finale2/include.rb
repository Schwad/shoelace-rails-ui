module ShoelaceRailsUI
  def include(src:, mode:, &block)
    <include src=#{src}, mode=#{mode}>
      #{block.call}
    </include>
  end
end
