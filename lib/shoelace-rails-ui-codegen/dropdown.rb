module ShoelaceRailsUI
  def sl_dropdown(**args)
    content_tag("sl-dropdown #{args[:trigger] ? "trigger=#{args[:trigger]}" : ""} #{args[:panel] ? "panel=#{args[:panel]}" : ""} #{args[:positioner] ? "positioner=#{args[:positioner]}" : ""} #{args[:placement] ? "placement=#{args[:placement]}" : ""} #{args[:containingElement] ? "containingElement=#{args[:containingElement]}" : ""} #{args[:distance] ? "distance=#{args[:distance]}" : ""} #{args[:skidding] ? "skidding=#{args[:skidding]}" : ""} #{args[:open] ? " open" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:stayOpenOnSelect] ? " stayOpenOnSelect" : ""} #{args[:hoist] ? " hoist" : ""}", yield)
  end
end
