module ShoelaceRailsUI
  def sl_radio(name:, value:, &block)
    content_tag("sl-radio name=#{name}, value=#{value}", yield)
  end
end
