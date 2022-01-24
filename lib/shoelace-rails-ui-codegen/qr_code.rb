module ShoelaceRailsUI
  def sl_qr_code(**args, &block)
    content_tag("sl-qr-code #{args[:canvas] ? "canvas=#{args[:canvas]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:fill] ? "fill=#{args[:fill]}" : ""} #{args[:background] ? "background=#{args[:background]}" : ""} #{args[:radius] ? "radius=#{args[:radius]}" : ""} #{args[:errorCorrection] ? "errorCorrection=#{args[:errorCorrection]}" : ""}", &block)
  end
end
