module ShoelaceRailsUI
  def sl_card(**args, &block)
    content_tag("sl-card", &block)
  end
end
