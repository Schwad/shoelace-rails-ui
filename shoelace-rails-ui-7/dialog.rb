module ShoelaceRailsUI
  def sl_dialog(&block)
    content_tag("sl-dialog", yield)
  end
end
