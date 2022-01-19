module ShoelaceRailsUI
  def sl_switch(name:, value:, &block)
    content_tag("sl-switch name=#{name}, value=#{value}", yield)
  end
end
