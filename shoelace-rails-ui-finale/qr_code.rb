module ShoelaceRailsUI
  def qr_code(error_correction:, &block)
    <qr-code ["error-correction=\#{error_correction}"]
  end
end
