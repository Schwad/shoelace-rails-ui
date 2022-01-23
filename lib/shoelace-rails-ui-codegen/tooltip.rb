module ShoelaceRailsUI
  def sl_tooltip(**args)
    content_tag("sl-tooltip #{args[:positioner] ? "positioner=#{args[:positioner]}" : ""} #{args[:tooltip] ? "tooltip=#{args[:tooltip]}" : ""} #{args[:content] ? "content=#{args[:content]}" : ""} #{args[:placement] ? "placement=#{args[:placement]}" : ""} #{args[:distance] ? "distance=#{args[:distance]}" : ""} #{args[:skidding] ? "skidding=#{args[:skidding]}" : ""} #{args[:trigger] ? "trigger=#{args[:trigger]}" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:open] ? " open" : ""} #{args[:hoist] ? " hoist" : ""}", yield)
  end
end
