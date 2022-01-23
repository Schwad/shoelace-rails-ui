module ShoelaceRailsUI
  def sl_mutation_observer(**args)
    content_tag("sl-mutation-observer #{args[:attr] ? "attr=#{args[:attr]}" : ""} #{args[:attrOldValue] ? " attrOldValue" : ""} #{args[:charData] ? " charData" : ""} #{args[:charDataOldValue] ? " charDataOldValue" : ""} #{args[:childList] ? " childList" : ""} #{args[:disabled] ? " disabled" : ""}", yield)
  end
end
