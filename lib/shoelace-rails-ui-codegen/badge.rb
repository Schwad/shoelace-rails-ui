module ShoelaceRailsUI
  def sl_badge(**args)
    content_tag("sl-badge #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:pill] ? " pill" : ""} #{args[:pulse] ? " pulse" : ""}", yield)
  end
end
