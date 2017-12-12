require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/rock_paper_scissors')

#anchor tags must be get requests
get("/") do
  erb( :home )
end

get("/welcome") do
  erb( :welcome)
end

get '/play/:ans1/:ans2' do

  rock_paper_scissors = RockPaperScissors.new(params[:ans1], params[:ans2] )

  #Need to setup an instance variable which can be picked up by the erb file
  @winner = rock_paper_scissors.play()
  erb( :result )

end
