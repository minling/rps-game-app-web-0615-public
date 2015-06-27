require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    # Your app code goes here

  
     @rpsgame = RPSGame.new(params[:play].to_sym)


    erb :rps_game
    #take the viewer/user to the file called rps_game that lives in the views directory
  end
end
