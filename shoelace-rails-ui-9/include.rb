module ShoelaceRailsUI
  def sl_include(src:, mode:)
    content_tag("sl-include src=#{src}, mode=#{mode}", yield)
  end
end
