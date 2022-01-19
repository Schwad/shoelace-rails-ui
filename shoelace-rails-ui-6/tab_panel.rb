module ShoelaceRailsUI
  def sl_tab_panel(&block)
    content_tag("tab-panel", yield)
  end
end
