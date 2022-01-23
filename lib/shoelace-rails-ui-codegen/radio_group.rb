module ShoelaceRailsUI
  def sl_radio_group(**args)
    content_tag("sl-radio-group #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:fieldset] ? " fieldset" : ""}", yield)
  end
end
