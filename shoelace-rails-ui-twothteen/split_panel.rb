module ShoelaceRailsUI
  def split_panel(primary:, snap:, &block)
    "
    <split-panel primary=#{primary}, snap=#{snap}>
      #{block.call}
    </split-panel>
    "
  end
end
