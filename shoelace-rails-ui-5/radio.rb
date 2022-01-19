module ShoelaceRailsUI
  def sl_radio(name:, value:, &block)
    content_tag(radio name=#{name}, value=#{value}, yield)
  end
end
