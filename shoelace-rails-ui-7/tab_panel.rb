module ShoelaceRailsUI
  def sl_tab_panel(&block)
    content_tag("sl-tab-panel", yield)
  end
end
