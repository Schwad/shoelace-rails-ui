module ShoelaceRailsUI
  def sl_radio_group(&block)
    content_tag("sl-radio-group", yield)
  end
end
