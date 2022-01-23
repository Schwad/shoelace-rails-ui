module ShoelaceRailsUI
  def sl_image_comparer(**args)
    content_tag("sl-image-comparer #{args[:handle] ? "handle=#{args[:handle]}" : ""} #{args[:position] ? "position=#{args[:position]}" : ""}", yield)
  end
end
