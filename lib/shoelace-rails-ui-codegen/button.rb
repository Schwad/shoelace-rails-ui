module ShoelaceRailsUI
  def sl_button(**args)
    content_tag("sl-button #{args[:button] ? "button=#{args[:button]}" : ""} #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:type] ? "type=#{args[:type]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:href] ? "href=#{args[:href]}" : ""} #{args[:target] ? "target=#{args[:target]}" : ""} #{args[:download] ? "download=#{args[:download]}" : ""} #{args[:caret] ? " caret" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:loading] ? " loading" : ""} #{args[:outline] ? " outline" : ""} #{args[:pill] ? " pill" : ""} #{args[:circle] ? " circle" : ""}", yield)
  end
end
