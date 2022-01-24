module ShoelaceRailsUI
  def sl_select(**args, &block)
    content_tag("sl-select #{args[:dropdown] ? "dropdown=#{args[:dropdown]}" : ""} #{args[:control] ? "control=#{args[:control]}" : ""} #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:menu] ? "menu=#{args[:menu]}" : ""} #{args[:maxTagsVisible] ? "maxTagsVisible=#{args[:maxTagsVisible]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:placeholder] ? "placeholder=#{args[:placeholder]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:helpText] ? "helpText=#{args[:helpText]}" : ""} #{args[:multiple] ? " multiple" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:hoist] ? " hoist" : ""} #{args[:filled] ? " filled" : ""} #{args[:pill] ? " pill" : ""} #{args[:required] ? " required" : ""} #{args[:clearable] ? " clearable" : ""} #{args[:invalid] ? " invalid" : ""}", &block)
  end
end
