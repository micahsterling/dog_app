class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def show
    @dogs = Dog.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @dogs = Dog.new(
    name: params[:name],
    breed: params[:breed],
    age:params[:age]
    )
    @dogs.save
    render 'show.json.jb'
  end

  def update
    @dogs = Dog.find_by(id: params[:id])
    @dogs.name = "george"
    @dogs.breed = "hound"
    @dogs.age = 1
    render 'show.json.jb'
  end
end
