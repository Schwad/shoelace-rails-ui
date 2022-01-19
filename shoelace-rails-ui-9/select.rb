module ShoelaceRailsUI
  def sl_select(size:, value:, label:, help_text:)
    content_tag("sl-select size=#{size}, value=#{value}, label=#{label}, help-text=#{help_text}", yield)
  end
end
