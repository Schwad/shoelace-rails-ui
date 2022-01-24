module ShoelaceRailsUI
  def sl_dialog(**args, &block)
    content_tag("sl-dialog #{args[:dialog] ? "dialog=#{args[:dialog]}" : ""} #{args[:panel] ? "panel=#{args[:panel]}" : ""} #{args[:overlay] ? "overlay=#{args[:overlay]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:open] ? " open" : ""} #{args[:noHeader] ? " noHeader" : ""}", &block)
  end
end
