module ShoelaceRailsUI
  def sl_color_picker(**args, &block)
    content_tag("sl-color-picker #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:previewButton] ? "previewButton=#{args[:previewButton]}" : ""} #{args[:dropdown] ? "dropdown=#{args[:dropdown]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:format] ? "format=#{args[:format]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:swatches] ? "swatches=#{args[:swatches]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:container] ? "container=#{args[:container]}" : ""} #{args[:h] ? "h=#{args[:h]}" : ""} #{args[:s] ? "s=#{args[:s]}" : ""} #{args[:l] ? "l=#{args[:l]}" : ""} #{args[:string] ? "string=#{args[:string]}" : ""} #{args[:h] ? "h=#{args[:h]}" : ""} #{args[:s] ? "s=#{args[:s]}" : ""} #{args[:l] ? "l=#{args[:l]}" : ""} #{args[:a] ? "a=#{args[:a]}" : ""} #{args[:string] ? "string=#{args[:string]}" : ""} #{args[:r] ? "r=#{args[:r]}" : ""} #{args[:g] ? "g=#{args[:g]}" : ""} #{args[:b] ? "b=#{args[:b]}" : ""} #{args[:string] ? "string=#{args[:string]}" : ""} #{args[:r] ? "r=#{args[:r]}" : ""} #{args[:g] ? "g=#{args[:g]}" : ""} #{args[:b] ? "b=#{args[:b]}" : ""} #{args[:a] ? "a=#{args[:a]}" : ""} #{args[:string] ? "string=#{args[:string]}" : ""} #{args[:hex] ? "hex=#{args[:hex]}" : ""} #{args[:hexa] ? "hexa=#{args[:hexa]}" : ""} #{args[:newValue] ? "newValue=#{args[:newValue]}" : ""} #{args[:inline] ? " inline" : ""} #{args[:noFormatToggle] ? " noFormatToggle" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:invalid] ? " invalid" : ""} #{args[:hoist] ? " hoist" : ""} #{args[:opacity] ? " opacity" : ""} #{args[:uppercase] ? " uppercase" : ""}", &block)
  end
end
