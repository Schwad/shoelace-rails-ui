module ShoelaceRailsUI
  def sl_details(summary:, &block)
    content_tag(details summary=#{summary}, yield)
  end
end
