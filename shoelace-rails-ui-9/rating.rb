module ShoelaceRailsUI
  def sl_rating(getSymbol: (value: number) => string = (value:)
    content_tag("sl-rating getSymbol: (value: number) => string = (value=#{getSymbol: (value: number) => string = (value}", yield)
  end
end
