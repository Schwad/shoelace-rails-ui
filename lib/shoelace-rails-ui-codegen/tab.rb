module ShoelaceRailsUI
  def sl_tab(**args, &block)
    content_tag("sl-tab #{args[:tab] ? "tab=#{args[:tab]}" : ""} #{args[:panel] ? "panel=#{args[:panel]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:active] ? " active" : ""} #{args[:closable] ? " closable" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
