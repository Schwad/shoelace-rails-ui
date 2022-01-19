module ShoelaceRailsUI
  def sl_button_group(&block)
    content_tag("button-group", yield)
  end
end
