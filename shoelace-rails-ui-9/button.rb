module ShoelaceRailsUI
  def sl_button(type:, name:, value:, href:, target:, download:)
    content_tag("sl-button type=#{type}, name=#{name}, value=#{value}, href=#{href}, target=#{target}, download=#{download}", yield)
  end
end