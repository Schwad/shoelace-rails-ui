module ShoelaceRailsUI
  def sl_input(name:, label:, help_text:, placeholder:, min:, max:, pattern:, autocapitalize:, autocorrect:, autocomplete:, inputmode:)
    content_tag("sl-input name=#{name}, label=#{label}, help-text=#{help_text}, placeholder=#{placeholder}, min=#{min}, max=#{max}, pattern=#{pattern}, autocapitalize=#{autocapitalize}, autocorrect=#{autocorrect}, autocomplete=#{autocomplete}, inputmode=#{inputmode}", yield)
  end
end
