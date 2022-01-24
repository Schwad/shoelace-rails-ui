module ShoelaceRailsUI
  def sl_format_bytes(**args, &block)
    content_tag("sl-format-bytes #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:unit] ? "unit=#{args[:unit]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""}", &block)
  end
end
