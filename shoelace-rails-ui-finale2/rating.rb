module ShoelaceRailsUI
  def rating(getSymbol: (value: number) => string = (value:, &block)
    <rating getSymbol: (value: number) => string = (value=#{getSymbol: (value: number) => string = (value}>
      #{block.call}
    </rating>
  end
end
