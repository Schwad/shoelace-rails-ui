module Shoelace
  module Rails
    module Ui
      class Engine < ::Rails::Engine
        isolate_namespace Shoelace::Rails::Ui
        config.assets.paths << File.expand_path("../../assets/stylesheets", __FILE__)
        config.assets.paths << File.expand_path("../../assets/javascripts", __FILE__)
        config.assets.precompile << %w( shoelace/rails/ui/shoelace_rails_ui.css )
      end
    end
  end
end
