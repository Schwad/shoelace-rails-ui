module ShoelaceRailsUI
  def sl_textarea(name:, label:, help_text:, placeholder:, resize:, pattern:, autocapitalize:, autocorrect:, autocomplete:, inputmode:, &block)
    content_tag("sl-textarea name=#{name}, label=#{label}, help-text=#{help_text}, placeholder=#{placeholder}, resize=#{resize}, pattern=#{pattern}, autocapitalize=#{autocapitalize}, autocorrect=#{autocorrect}, autocomplete=#{autocomplete}, inputmode=#{inputmode}", yield)
  end
end
