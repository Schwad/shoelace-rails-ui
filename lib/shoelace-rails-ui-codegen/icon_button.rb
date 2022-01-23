module ShoelaceRailsUI
  def sl_icon_button(**args)
    content_tag("sl-icon-button #{args[:button] ? "button=#{args[:button]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:library] ? "library=#{args[:library]}" : ""} #{args[:src] ? "src=#{args[:src]}" : ""} #{args[:href] ? "href=#{args[:href]}" : ""} #{args[:target] ? "target=#{args[:target]}" : ""} #{args[:download] ? "download=#{args[:download]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:disabled] ? " disabled" : ""}", yield)
  end
end
