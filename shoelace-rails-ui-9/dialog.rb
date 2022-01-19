module ShoelaceRailsUI
  def sl_dialog()
    content_tag("sl-dialog", yield)
  end
end
