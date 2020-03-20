require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/' do 
    @pig_latin = PigLatinizer.new(params[:user_text])
    
    erb :pig_latin
  end
end