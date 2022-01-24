module ShoelaceRailsUI
  def sl_drawer(**args, &block)
    content_tag("sl-drawer #{args[:drawer] ? "drawer=#{args[:drawer]}" : ""} #{args[:panel] ? "panel=#{args[:panel]}" : ""} #{args[:overlay] ? "overlay=#{args[:overlay]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:placement] ? "placement=#{args[:placement]}" : ""} #{args[:open] ? " open" : ""} #{args[:contained] ? " contained" : ""} #{args[:noHeader] ? " noHeader" : ""}", &block)
  end
end
