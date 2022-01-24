module ShoelaceRailsUI
  def sl_skeleton(**args, &block)
    content_tag("sl-skeleton #{args[:effect] ? "effect=#{args[:effect]}" : ""}", &block)
  end
end
