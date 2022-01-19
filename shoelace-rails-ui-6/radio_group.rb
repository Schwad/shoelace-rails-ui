module ShoelaceRailsUI
  def sl_radio_group(&block)
    content_tag("radio-group", yield)
  end
end
