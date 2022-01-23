module ShoelaceRailsUI
  def sl_avatar(**args)
    content_tag("sl-avatar #{args[:image] ? "image=#{args[:image]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:initials] ? "initials=#{args[:initials]}" : ""} #{args[:shape] ? "shape=#{args[:shape]}" : ""}", yield)
  end
end
