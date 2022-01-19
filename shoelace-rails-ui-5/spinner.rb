module ShoelaceRailsUI
  def sl_spinner(&block)
    content_tag(spinner, yield)
  end
end
