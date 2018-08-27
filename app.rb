require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "Hello #{@reversed_name}!"
  end
  
  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @times = params[:number].to_i
    @reply = ""
    @times.times { @reply += @phrase}
    "#{@reply}"
  end
  
  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}!"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
  end
  
end