module ShoelaceRailsUI
  def sl_tab_panel(**args)
    content_tag("sl-tab-panel #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:active] ? " active" : ""}", yield)
  end
end
