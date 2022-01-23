# frozen_string_literal: true
require 'rails/generators'

module Shoelace
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Requires shoelace CSS in application.css"
      def bring_in_css
        insert_into_file "./app/assets/stylesheets/application.css", " *= require sl_styles_light.css\n", before: "*/"
      end

      desc "Brings in JS"
      def bring_in_js
        append_to_file "config/importmap.rb", "\npin \"shoelace\", to: \"https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.64/dist/shoelace.js\""
        append_to_file "app/javascript/application.js", "\nimport \"shoelace\""
      end
    end
  end
end