module ShoelaceRailsUI
  def sl_tab_panel(**args, &block)
    content_tag("sl-tab-panel #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:active] ? " active" : ""}", &block)
  end
end
