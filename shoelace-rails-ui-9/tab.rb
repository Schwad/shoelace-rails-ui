module ShoelaceRailsUI
  def sl_tab(lang:)
    content_tag("sl-tab lang=#{lang}", yield)
  end
end
