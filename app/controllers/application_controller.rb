class ApplicationController < ActionController::Base
  # protect_from_forgery
  before_filter :add_allow_credentials_headers

  def add_allow_credentials_headers
    response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
    response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
  end

  def options
    head :status => 200, :'Access-Control-Allow-Headers' => 'accept, content-type'
  end

  def welcome
    render text: "<h1>Hello</h1><p>You've reached the backend of the jq2016Revamp project</p><p>You're not supposed to see this..</p>"
  end
end