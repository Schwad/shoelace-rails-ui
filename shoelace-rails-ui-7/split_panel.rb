module ShoelaceRailsUI
  def sl_split_panel(primary:, snap:, &block)
    content_tag("sl-split-panel primary=#{primary}, snap=#{snap}", yield)
  end
end
