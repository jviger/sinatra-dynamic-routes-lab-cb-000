require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "Hello #{@reversed_name}!"
  end
  
  get "/say/:number/:phrase" do
    @reversed_name = params[:name].reverse
    "Hello #{@reversed_name}!"
  end
  
end