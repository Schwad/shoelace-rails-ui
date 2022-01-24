module ShoelaceRailsUI
  def sl_spinner(**args, &block)
    content_tag("sl-spinner", &block)
  end
end
