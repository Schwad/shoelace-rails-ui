module ShoelaceRailsUI
  def radio_group(&block)
    "
    <radio-group>
      #{block.call}
    </radio-group>
    "
  end
end
