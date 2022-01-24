module ShoelaceRailsUI
  def sl_radio_group(**args, &block)
    content_tag("sl-radio-group #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:fieldset] ? " fieldset" : ""}", &block)
  end
end
