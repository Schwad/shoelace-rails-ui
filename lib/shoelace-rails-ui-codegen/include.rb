module ShoelaceRailsUI
  def sl_include(**args, &block)
    content_tag("sl-include #{args[:src] ? "src=#{args[:src]}" : ""} #{args[:mode] ? "mode=#{args[:mode]}" : ""} #{args[:allowScripts] ? " allowScripts" : ""}", &block)
  end
end
