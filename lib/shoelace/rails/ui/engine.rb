module Shoelace
  module Rails
    module Ui
      class Engine < ::Rails::Engine
        isolate_namespace Shoelace::Rails::Ui
      end
    end
  end
end
