module ShoelaceRailsUI
  def sl_icon_button(name:, library:, src:, href:, target:, download:, &block)
    content_tag("icon-button name=#{name}, library=#{library}, src=#{src}, href=#{href}, target=#{target}, download=#{download}", yield)
  end
end
