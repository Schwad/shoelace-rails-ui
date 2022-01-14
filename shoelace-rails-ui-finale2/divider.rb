module ShoelaceRailsUI
  def divider(, &block)
    <divider >
      #{block.call}
    </divider>
  end
end
