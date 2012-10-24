Welcome to Rails Benchmark
==========================

This app is a demo of using [Rack::FiberPool](https://github.com/mperham/rack-fiber_pool) and [EventMachine](https://github.com/eventmachine/eventmachine) to support asynchronous requests. To deploy it to Heroku, use the build pack https://github.com/kidlab/heroku-buildpack-ruby

See more at: https://devcenter.heroku.com/articles/buildpacks#using-a-custom-buildpack

The reason why we use the kidlab/heroku-buildpack-ruby instead of Heroku default buildpack is because we need to write a customized database.yml file the use 'em_postgresql' adapter. 

While Heroku Ruby buildpack always uses `postgresql` adapter.
Please note that the above custom buildpack only uses `em_postgresql` when you specify the gem 'em-postgresql-adapter' in the `Gemfile`.
  
Set this env variables to Heroku:

    heroku config:add BUILDPACK_URL=https://github.com/kidlab/heroku-buildpack-ruby --app rails-benchmark
    heroku config:add DATABASE_POOL=4 --app rails-benchmark
    heroku config:add DATABASE_CONNECTIONS=5 --app rails-benchmark

You can check the live version of the app running at http://rails-benchmark.herokuapp.com/:

    ab -c 220 -n 2000 http://rails-benchmark.herokuapp.com/api/categories

References
---------
* https://github.com/mperham/rack-fiber_pool
* https://github.com/igrigorik/async-rails/
* https://github.com/jackquack/async-rails32_postgres

Caution
------- 
* Heroku Postgres Dev supports only 20 connections pool, see: https://devcenter.heroku.com/articles/heroku-postgres-starter-tier#limits
* If you use Unicorn or Rainbows with em_postgresql adapter, be careful when configuring the worker_processes and the DB pool.
    - For example, if the `worker_processes` is 4, the DB pool should be 4, because we will have 4 x 5 = 16 connections.
