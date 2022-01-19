module ShoelaceRailsUI
  def icon_button(name:, library:, src:, href:, target:, download:, &block)
    "
    <icon-button name=#{name}, library=#{library}, src=#{src}, href=#{href}, target=#{target}, download=#{download}>
      #{block.call}
    </icon-button>
    "
  end
end
