module ShoelaceRailsUI
  def sl_checkbox(**args)
    content_tag("sl-checkbox #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:required] ? " required" : ""} #{args[:checked] ? " checked" : ""} #{args[:indeterminate] ? " indeterminate" : ""} #{args[:invalid] ? " invalid" : ""}", yield)
  end
end
