module ShoelaceRailsUI
  def sl_dialog(**args)
    content_tag("sl-dialog #{args[:dialog] ? "dialog=#{args[:dialog]}" : ""} #{args[:panel] ? "panel=#{args[:panel]}" : ""} #{args[:overlay] ? "overlay=#{args[:overlay]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:open] ? " open" : ""} #{args[:noHeader] ? " noHeader" : ""}", yield)
  end
end
