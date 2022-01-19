module ShoelaceRailsUI
  def sl_format_number(lang:, type:, currency_display:, &block)
    content_tag("format-number lang=#{lang}, type=#{type}, currency-display=#{currency_display}", yield)
  end
end
