Rainbows! do
 use :EventMachine # concurrency model to use
 worker_connections 500
end

# the rest of the Unicorn configuration...
preload_app true
worker_processes 4
timeout 30

before_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection_pool.disconnect!
    Rails.logger.info('Disconnected from ActiveRecord')
  end
end

after_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
    Rails.logger.info('Connected to ActiveRecord')
  end
end
