module ShoelaceRailsUI
  def sl_select(size:, value:, label:, help_text:, &block)
    content_tag(select size=#{size}, value=#{value}, label=#{label}, help-text=#{help_text}, yield)
  end
end
