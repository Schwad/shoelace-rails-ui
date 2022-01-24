module ShoelaceRailsUI
  def sl_breadcrumb(**args, &block)
    content_tag("sl-breadcrumb #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:separatorSlot] ? "separatorSlot=#{args[:separatorSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""}", &block)
  end
end
