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
    @dogs.name = params[:name] || @dogs.name
    @dogs.breed = params[:breed] || @dogs.breed
    @dogs.age = params[:age] || @dogs.age
    @dogs.save
    render 'show.json.jb'
  end
end
