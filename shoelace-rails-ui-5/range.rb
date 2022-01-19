module ShoelaceRailsUI
  def sl_range(help_text:, tooltip:, &block)
    content_tag(range help-text=#{help_text}, tooltip=#{tooltip}, yield)
  end
end
