module ShoelaceRailsUI
  def sl_details(summary:)
    content_tag("sl-details summary=#{summary}", yield)
  end
end
