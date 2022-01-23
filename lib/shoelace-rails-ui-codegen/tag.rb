module ShoelaceRailsUI
  def sl_tag(**args)
    content_tag("sl-tag #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:pill] ? " pill" : ""} #{args[:removable] ? " removable" : ""}", yield)
  end
end
