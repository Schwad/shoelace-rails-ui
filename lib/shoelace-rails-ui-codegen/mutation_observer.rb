module ShoelaceRailsUI
  def sl_mutation_observer(**args, &block)
    content_tag("sl-mutation-observer #{args[:attr] ? "attr=#{args[:attr]}" : ""} #{args[:attrOldValue] ? " attrOldValue" : ""} #{args[:charData] ? " charData" : ""} #{args[:charDataOldValue] ? " charDataOldValue" : ""} #{args[:childList] ? " childList" : ""} #{args[:disabled] ? " disabled" : ""}", &block)
  end
end
