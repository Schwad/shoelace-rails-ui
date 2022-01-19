module ShoelaceRailsUI
  def sl_visually_hidden(&block)
    content_tag("sl-visually-hidden", yield)
  end
end
