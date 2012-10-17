class Api::CategoriesController < Api::BaseApiController
  def index
    status = 200
    result = {}
    result[:data] = Category.all
  
    respond_with(result, :status => status)
  end
end
