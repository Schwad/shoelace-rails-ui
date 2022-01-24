module ShoelaceRailsUI
  def sl_badge(**args, &block)
    content_tag("sl-badge #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:pill] ? " pill" : ""} #{args[:pulse] ? " pulse" : ""}", &block)
  end
end
