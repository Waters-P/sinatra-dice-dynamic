require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/dice/:all_dice/:all_sides") do

  @all_dice = params.fetch(:all_dice).to_i

  @all_sides = params.fetch(:all_sides).to_i

  @rolls = []

  @all_dice.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:flexible)
end
