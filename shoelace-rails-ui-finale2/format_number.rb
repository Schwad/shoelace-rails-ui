module ShoelaceRailsUI
  def format_number(lang:, type:, currency_display:, &block)
    <format-number lang=#{lang}, type=#{type}, currency-display=#{currency_display}>
      #{block.call}
    </format-number>
  end
end
