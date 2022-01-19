module ShoelaceRailsUI
  def sl_button_group()
    content_tag("sl-button-group", yield)
  end
end
