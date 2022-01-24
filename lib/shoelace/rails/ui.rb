require "shoelace/rails/ui/version"
require "shoelace/rails/ui/engine"
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file| 
  require File.basename(file, File.extname(file))
end
module Shoelace
  module Rails
    module Ui
      # Your code goes here...
    end
  end
end
