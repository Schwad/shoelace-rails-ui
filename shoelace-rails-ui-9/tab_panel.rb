module ShoelaceRailsUI
  def sl_tab_panel()
    content_tag("sl-tab-panel", yield)
  end
end
