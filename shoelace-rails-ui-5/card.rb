module ShoelaceRailsUI
  def sl_card(&block)
    content_tag(card, yield)
  end
end
