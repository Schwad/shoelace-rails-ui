module ShoelaceRailsUI
  def card(, &block)
    "
    <card >
      #{block.call}
    </card>
    "
  end
end
