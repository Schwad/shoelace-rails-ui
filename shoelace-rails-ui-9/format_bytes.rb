module ShoelaceRailsUI
  def sl_format_bytes(unit:, lang:)
    content_tag("sl-format-bytes unit=#{unit}, lang=#{lang}", yield)
  end
end
