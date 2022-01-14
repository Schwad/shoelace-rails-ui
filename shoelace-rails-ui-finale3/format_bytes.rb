module ShoelaceRailsUI
  def format_bytes(unit:, lang:, &block)
    "
    <format-bytes unit=#{unit}, lang=#{lang}>
      #{block.call}
    </format-bytes>
    "
  end
end
