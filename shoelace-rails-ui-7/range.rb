module ShoelaceRailsUI
  def sl_range(help_text:, tooltip:, &block)
    content_tag("sl-range help-text=#{help_text}, tooltip=#{tooltip}", yield)
  end
end
