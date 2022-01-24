module ShoelaceRailsUI
  def sl_menu(**args, &block)
    content_tag("sl-menu #{args[:menu] ? "menu=#{args[:menu]}" : ""} #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:includeDisabled] ? " includeDisabled" : ""}", &block)
  end
end
