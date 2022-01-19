module ShoelaceRailsUI
  def sl_radio(name:, value:)
    content_tag("sl-radio name=#{name}, value=#{value}", yield)
  end
end
