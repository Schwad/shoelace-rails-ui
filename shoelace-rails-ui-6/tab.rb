module ShoelaceRailsUI
  def sl_tab(lang:, &block)
    content_tag("tab lang=#{lang}", yield)
  end
end
