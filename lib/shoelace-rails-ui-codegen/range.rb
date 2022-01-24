module ShoelaceRailsUI
  def sl_range(**args, &block)
    content_tag("sl-range #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:output] ? "output=#{args[:output]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:helpText] ? "helpText=#{args[:helpText]}" : ""} #{args[:min] ? "min=#{args[:min]}" : ""} #{args[:max] ? "max=#{args[:max]}" : ""} #{args[:step] ? "step=#{args[:step]}" : ""} #{args[:tooltip] ? "tooltip=#{args[:tooltip]}" : ""} #{args[:tooltipFormatter] ? "tooltipFormatter=#{args[:tooltipFormatter]}" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:invalid] ? " invalid" : ""}", &block)
  end
end
