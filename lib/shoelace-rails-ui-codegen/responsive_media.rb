module ShoelaceRailsUI
  def sl_responsive_media(**args, &block)
    content_tag("sl-responsive-media #{args[:aspectRatio] ? "aspectRatio=#{args[:aspectRatio]}" : ""} #{args[:fit] ? "fit=#{args[:fit]}" : ""}", &block)
  end
end
