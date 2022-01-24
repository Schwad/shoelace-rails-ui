module ShoelaceRailsUI
  def sl_switch(**args, &block)
    content_tag("sl-switch #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:required] ? " required" : ""} #{args[:checked] ? " checked" : ""} #{args[:invalid] ? " invalid" : ""}", &block)
  end
end
