class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    @list_of_movies = Movie.all
    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id }).at(0)
    @characters = Character.where({ :actor => @the_actor.id })
    @list_of_movies = Movie.all
    render({ :template => "actor_templates/actor.html.erb" })
  end
  

end