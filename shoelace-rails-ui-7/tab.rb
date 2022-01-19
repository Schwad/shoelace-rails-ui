module ShoelaceRailsUI
  def sl_tab(lang:, &block)
    content_tag("sl-tab lang=#{lang}", yield)
  end
end
