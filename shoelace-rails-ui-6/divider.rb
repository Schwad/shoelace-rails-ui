module ShoelaceRailsUI
  def sl_divider(&block)
    content_tag("divider", yield)
  end
end
