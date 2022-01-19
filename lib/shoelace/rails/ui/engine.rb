module Shoelace
  module Rails
    module Ui
      class Engine < ::Rails::Engine
        isolate_namespace Shoelace::Rails::Ui
        initializer 'local_helper.action_controller' do
          ActiveSupport.on_load :action_controller do
            helper Shoelace::Rails::Ui::ApplicationHelper
          end
        end
        # config.to_prepare do
        #   ApplicationController.helper(ApplicationHelper)
        # end
        # config.assets.paths << File.expand_path("../../assets/stylesheets", __FILE__)
        # config.assets.paths << File.expand_path("../../assets/javascripts", __FILE__)
        # config.assets.precompile << %w( shoelace/rails/ui/shoelace_rails_ui.css )
      end
    end
  end
end
