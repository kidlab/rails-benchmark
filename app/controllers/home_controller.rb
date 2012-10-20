class HomeController < ApplicationController
  def index
    render(:text => "Benchmark with: ab -c 220 -n 2000 http://rails-benchmark.herokuapp.com/api/categories")
  end
end
