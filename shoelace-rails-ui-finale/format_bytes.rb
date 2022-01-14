module ShoelaceRailsUI
  def format_bytes(unit:, lang:, &block)
    <format-bytes ["unit=\#{unit}", "lang=\#{lang}"]
  end
end
