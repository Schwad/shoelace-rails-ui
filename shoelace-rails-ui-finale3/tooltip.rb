module ShoelaceRailsUI
  def tooltip(placement:, &block)
    "
    <tooltip placement=#{placement}>
      #{block.call}
    </tooltip>
    "
  end
end
