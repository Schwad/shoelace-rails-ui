module ShoelaceRailsUI
  def sl_button_group(**args)
    content_tag("sl-button-group #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""}", yield)
  end
end
