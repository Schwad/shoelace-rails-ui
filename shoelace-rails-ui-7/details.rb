module ShoelaceRailsUI
  def sl_details(summary:, &block)
    content_tag("sl-details summary=#{summary}", yield)
  end
end
