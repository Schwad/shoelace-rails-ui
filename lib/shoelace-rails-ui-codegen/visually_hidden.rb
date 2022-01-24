module ShoelaceRailsUI
  def sl_visually_hidden(**args, &block)
    content_tag("sl-visually-hidden", &block)
  end
end
