module ShoelaceRailsUI
  def sl_checkbox(name:, value:)
    content_tag("sl-checkbox name=#{name}, value=#{value}", yield)
  end
end
