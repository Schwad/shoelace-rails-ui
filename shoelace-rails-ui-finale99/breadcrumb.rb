module ShoelaceRailsUI
  def breadcrumb(, &block)
    "
    <breadcrumb >
      #{block.call}
    </breadcrumb>
    "
  end
end
