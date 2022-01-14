module ShoelaceRailsUI
  def dialog(, &block)
    "
    <dialog >
      #{block.call}
    </dialog>
    "
  end
end
