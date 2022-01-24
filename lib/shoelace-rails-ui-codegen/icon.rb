module ShoelaceRailsUI
  def sl_icon(**args, &block)
    content_tag("sl-icon #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:src] ? "src=#{args[:src]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:library] ? "library=#{args[:library]}" : ""}", &block)
  end
end
