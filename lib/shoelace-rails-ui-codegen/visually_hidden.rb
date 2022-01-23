module ShoelaceRailsUI
  def sl_visually_hidden(**args)
    content_tag("sl-visually-hidden", yield)
  end
end
