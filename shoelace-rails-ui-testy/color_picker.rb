module ShoelaceRailsUI
  def color_picker(format:, size:, lang:, &block)
    "
    <color-picker format=#{format}, size=#{size}, lang=#{lang}>
      #{block.call}
    </color-picker>
    "
  end
end
