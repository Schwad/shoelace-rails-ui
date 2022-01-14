module ShoelaceRailsUI
  def textarea(name:, label:, help_text:, placeholder:, resize:, pattern:, autocapitalize:, autocorrect:, autocomplete:, inputmode:, &block)
    "
    <textarea name=#{name}, label=#{label}, help-text=#{help_text}, placeholder=#{placeholder}, resize=#{resize}, pattern=#{pattern}, autocapitalize=#{autocapitalize}, autocorrect=#{autocorrect}, autocomplete=#{autocomplete}, inputmode=#{inputmode}>
      #{block.call}
    </textarea>
    "
  end
end
