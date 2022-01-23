module ShoelaceRailsUI
  def sl_radio(**args)
    content_tag("sl-radio #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:checked] ? " checked" : ""} #{args[:invalid] ? " invalid" : ""}", yield)
  end
end
