module ShoelaceRailsUI
  def animation(direction:, fill:, &block)
    <animation ["direction=\#{direction}", "fill=\#{fill}"]
  end
end
