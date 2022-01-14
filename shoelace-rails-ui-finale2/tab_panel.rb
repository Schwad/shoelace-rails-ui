module ShoelaceRailsUI
  def tab_panel(, &block)
    <tab-panel >
      #{block.call}
    </tab-panel>
  end
end
