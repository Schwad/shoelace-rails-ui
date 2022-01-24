module ShoelaceRailsUI
  def sl_input(**args, &block)
    content_tag("sl-input #{args[:input] ? "input=#{args[:input]}" : ""} #{args[:type] ? "type=#{args[:type]}" : ""} #{args[:size] ? "size=#{args[:size]}" : ""} #{args[:name] ? "name=#{args[:name]}" : ""} #{args[:value] ? "value=#{args[:value]}" : ""} #{args[:label] ? "label=#{args[:label]}" : ""} #{args[:helpText] ? "helpText=#{args[:helpText]}" : ""} #{args[:placeholder] ? "placeholder=#{args[:placeholder]}" : ""} #{args[:minlength] ? "minlength=#{args[:minlength]}" : ""} #{args[:maxlength] ? "maxlength=#{args[:maxlength]}" : ""} #{args[:min] ? "min=#{args[:min]}" : ""} #{args[:max] ? "max=#{args[:max]}" : ""} #{args[:step] ? "step=#{args[:step]}" : ""} #{args[:pattern] ? "pattern=#{args[:pattern]}" : ""} #{args[:autocapitalize] ? "autocapitalize=#{args[:autocapitalize]}" : ""} #{args[:autocorrect] ? "autocorrect=#{args[:autocorrect]}" : ""} #{args[:autocomplete] ? "autocomplete=#{args[:autocomplete]}" : ""} #{args[:inputmode] ? "inputmode=#{args[:inputmode]}" : ""} #{args[:selectionEnd] ? "selectionEnd=#{args[:selectionEnd]}" : ""} #{args[:start] ? "start=#{args[:start]}" : ""} #{args[:filled] ? " filled" : ""} #{args[:pill] ? " pill" : ""} #{args[:clearable] ? " clearable" : ""} #{args[:togglePassword] ? " togglePassword" : ""} #{args[:disabled] ? " disabled" : ""} #{args[:readonly] ? " readonly" : ""} #{args[:required] ? " required" : ""} #{args[:invalid] ? " invalid" : ""} #{args[:autofocus] ? " autofocus" : ""} #{args[:spellcheck] ? " spellcheck" : ""}", &block)
  end
end