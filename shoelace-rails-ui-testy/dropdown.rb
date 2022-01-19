module ShoelaceRailsUI
  def dropdown(placement:, &block)
    "
    <dropdown placement=#{placement}>
      #{block.call}
    </dropdown>
    "
  end
end
