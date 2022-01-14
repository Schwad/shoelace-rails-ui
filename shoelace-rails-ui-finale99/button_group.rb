module ShoelaceRailsUI
  def button_group(, &block)
    "
    <button-group >
      #{block.call}
    </button-group>
    "
  end
end
