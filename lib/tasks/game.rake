require 'rubygems'
require 'bundler'
Bundler.require if defined?(Bundler)

namespace :game  do
  desc "Populate a game w/ default data"
  task :populate, [:game_id] => :environment do |t, args|
    DefaultGameService.new(args.game_id).populate_defaults
  end
end
