module Shoelace
  module Rails
    module Ui
      class Engine < ::Rails::Engine
        config.autoload_paths << File.expand_path("../../../lib", __FILE__)
        isolate_namespace Shoelace::Rails::Ui
        initializer 'local_helper.action_controller' do
          ActiveSupport.on_load :action_controller do
            helper Shoelace::Rails::Ui::ApplicationHelper
            helper Shoelace::Rails::Ui::FormHelper
          end
        end
      end
    end
  end
end
