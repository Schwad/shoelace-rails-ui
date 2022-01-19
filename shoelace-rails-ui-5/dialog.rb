module ShoelaceRailsUI
  def sl_dialog(&block)
    content_tag(dialog, yield)
  end
end
