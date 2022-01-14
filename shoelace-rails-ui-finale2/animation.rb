module ShoelaceRailsUI
  def animation(direction:, fill:, &block)
    <animation direction=#{direction}, fill=#{fill}>
      #{block.call}
    </animation>
  end
end
