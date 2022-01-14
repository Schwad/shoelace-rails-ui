module ShoelaceRailsUI
  def resize_observer(, &block)
    <resize-observer >
      #{block.call}
    </resize-observer>
  end
end
