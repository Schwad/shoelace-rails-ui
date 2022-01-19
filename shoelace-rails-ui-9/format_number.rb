module ShoelaceRailsUI
  def sl_format_number(lang:, type:, currency_display:)
    content_tag("sl-format-number lang=#{lang}, type=#{type}, currency-display=#{currency_display}", yield)
  end
end
