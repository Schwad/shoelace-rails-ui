module ShoelaceRailsUI
  def sl_divider(&block)
    content_tag("sl-divider", yield)
  end
end
