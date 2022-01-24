module ShoelaceRailsUI
  def sl_progress_bar(**args, &block)
    content_tag("sl-progress-bar #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:indeterminate] ? " indeterminate" : ""}", &block)
  end
end
