module ShoelaceRailsUI
  def input(name:, label:, help_text:, placeholder:, min:, max:, pattern:, autocapitalize:, autocorrect:, autocomplete:, inputmode:, &block)
    <input ["name=\#{name}", "label=\#{label}", "help-text=\#{help_text}", "placeholder=\#{placeholder}", "min=\#{min}", "max=\#{max}", "pattern=\#{pattern}", "autocapitalize=\#{autocapitalize}", "autocorrect=\#{autocorrect}", "autocomplete=\#{autocomplete}", "inputmode=\#{inputmode}"]
  end
end
