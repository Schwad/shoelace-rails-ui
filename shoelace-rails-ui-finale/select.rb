module ShoelaceRailsUI
  def select(size:, value:, label:, help_text:, &block)
    <select ["size=\#{size}", "value=\#{value}", "label=\#{label}", "help-text=\#{help_text}"]
  end
end
