module ShoelaceRailsUI
  def sl_visually_hidden(&block)
    content_tag(visually-hidden, yield)
  end
end
