module ShoelaceRailsUI
  def sl_alert(**args)
    content_tag("sl-alert #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:duration] ? "duration=#{args[:duration]}" : ""} #{args[:open] ? " open" : ""} #{args[:closable] ? " closable" : ""}", yield)
  end
end
