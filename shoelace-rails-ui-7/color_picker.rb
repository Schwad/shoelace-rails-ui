module ShoelaceRailsUI
  def sl_color_picker(format:, size:, lang:, &block)
    content_tag("sl-color-picker format=#{format}, size=#{size}, lang=#{lang}", yield)
  end
end
