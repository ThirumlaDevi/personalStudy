class WelcomeController < ApplicationController
  require 'net/http'

  def index
    
    # render json: {
    #   status: { 
    #     code: 200, message: 'Logged in successfully.',
    #     data: { user_type: user_type, api_token: api_token }
    #   }
    # }, status: :ok
    # render json
    # make_request
  end

  def new
    user_type = params[:user_type]
    api_token = params[:api_token]
  end

  protected
  def make_request
    token = '**************'
    url = 'http://localhost:3000/articles'
    uri = URI(url)
    request = Net::HTTP::Get.new(uri)
    request['token'] = token
    response = Net::HTTP.start(uri.hostname, uri.port) do |http|
      http.request(request)
    end
  end
end

