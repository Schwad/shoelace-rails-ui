module ShoelaceRailsUI
  def sl_breadcrumb(**args)
    content_tag("sl-breadcrumb #{args[:defaultSlot] ? "defaultSlot=#{args[:defaultSlot]}" : ""} #{args[:separatorSlot] ? "separatorSlot=#{args[:separatorSlot]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""}", yield)
  end
end
