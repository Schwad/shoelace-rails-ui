module ShoelaceRailsUI
  def sl_skeleton(**args)
    content_tag("sl-skeleton #{args[:effect] ? "effect=#{args[:effect]}" : ""}", yield)
  end
end
