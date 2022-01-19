module ShoelaceRailsUI
  def sl_spinner(&block)
    content_tag("sl-spinner", yield)
  end
end
