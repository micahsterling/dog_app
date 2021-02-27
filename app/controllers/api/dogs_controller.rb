class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def show
    @dogs = Dog.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
