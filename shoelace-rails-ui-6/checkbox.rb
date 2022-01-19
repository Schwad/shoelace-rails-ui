module ShoelaceRailsUI
  def sl_checkbox(name:, value:, &block)
    content_tag("checkbox name=#{name}, value=#{value}", yield)
  end
end
