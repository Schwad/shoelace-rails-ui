module ShoelaceRailsUI
  def sl_spinner(**args)
    content_tag("sl-spinner", yield)
  end
end
