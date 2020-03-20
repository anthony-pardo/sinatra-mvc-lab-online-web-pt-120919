require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    te = PigLatinizer.new
    @text = pig_latin.
    
    erb :pig_latin
  end
end