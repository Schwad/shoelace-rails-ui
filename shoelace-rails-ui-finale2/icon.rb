module ShoelaceRailsUI
  def icon(name:, src:, label:, &block)
    <icon name=#{name}, src=#{src}, label=#{label}>
      #{block.call}
    </icon>
  end
end
