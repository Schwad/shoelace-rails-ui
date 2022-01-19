module ShoelaceRailsUI
  def sl_format_bytes(unit:, lang:, &block)
    content_tag("format-bytes unit=#{unit}, lang=#{lang}", yield)
  end
end
