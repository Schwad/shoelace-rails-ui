module ShoelaceRailsUI
  def sl_button_group(**args, &block)
    content_tag("sl-button-group #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""}", &block)
  end
end
