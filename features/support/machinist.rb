require 'machinist/active_record' # or your chosen adaptor
Dir.glob(File.dirname(__FILE__) + '/../../spec/blueprints/*.rb') do |blueprint_file|# or wherever your blueprints are
  require blueprint_file
end