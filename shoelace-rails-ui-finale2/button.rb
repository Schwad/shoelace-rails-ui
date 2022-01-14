module ShoelaceRailsUI
  def button(type:, name:, value:, href:, target:, download:, &block)
    <button type=#{type}, name=#{name}, value=#{value}, href=#{href}, target=#{target}, download=#{download}>
      #{block.call}
    </button>
  end
end
