module ShoelaceRailsUI
  def sl_menu_item(**args, &block)
    content_tag("sl-menu-item #{args[:menuItem] ? "menuItem=#{args[:menuItem]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:checked] ? " checked" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
