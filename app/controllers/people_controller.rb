class PeopleController < ApplicationController
  def index
  	person = Person.order("created_at DESC")
  	render json: person
  end

end