module ShoelaceRailsUI
  def sl_split_panel(**args, &block)
    content_tag("sl-split-panel #{args[:divider] ? "divider=#{args[:divider]}" : ""} #{args[:position] ? "position=#{args[:position]}" : ""} #{args[:positionInPixels] ? "positionInPixels=#{args[:positionInPixels]}" : ""} #{args[:primary] ? "primary=#{args[:primary]}" : ""} #{args[:snap] ? "snap=#{args[:snap]}" : ""} #{args[:snapThreshold] ? "snapThreshold=#{args[:snapThreshold]}" : ""} #{args[:vertical] ? " vertical" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
