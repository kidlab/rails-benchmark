class Api::BaseApiController < ApplicationController
  layout false
  respond_to :json
  before_filter :set_default_response_format

  protected

    # Default response format is JSON.
    def set_default_response_format
      request.format = :json if params[:format].blank?
    end
end
