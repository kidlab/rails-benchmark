# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# include Rack::FiberPool in your stack and
# set the number of fibers in the pool (100 is the current default)
#use Rack::FiberPool, :size => 500

run RailsBenchmark::Application
