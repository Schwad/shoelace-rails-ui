module ShoelaceRailsUI
  def sl_button_group(&block)
    content_tag("sl-button-group", yield)
  end
end
