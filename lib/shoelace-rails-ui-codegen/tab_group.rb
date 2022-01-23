module ShoelaceRailsUI
  def sl_tab_group(**args)
    content_tag("sl-tab-group #{args[:tabGroup] ? "tabGroup=#{args[:tabGroup]}" : ""} #{args[:body] ? "body=#{args[:body]}" : ""} #{args[:nav] ? "nav=#{args[:nav]}" : ""} #{args[:indicator] ? "indicator=#{args[:indicator]}" : ""} #{args[:placement] ? "placement=#{args[:placement]}" : ""} #{args[:activation] ? "activation=#{args[:activation]}" : ""} #{args[:lang] ? "lang=#{args[:lang]}" : ""} #{args[:noScrollControls] ? " noScrollControls" : ""}", yield)
  end
end
