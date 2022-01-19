module ShoelaceRailsUI
  def sl_visually_hidden()
    content_tag("sl-visually-hidden", yield)
  end
end
