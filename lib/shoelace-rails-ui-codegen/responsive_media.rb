module ShoelaceRailsUI
  def sl_responsive_media(**args)
    content_tag("sl-responsive-media #{args[:aspectRatio] ? "aspectRatio=#{args[:aspectRatio]}" : ""} #{args[:fit] ? "fit=#{args[:fit]}" : ""}", yield)
  end
end
