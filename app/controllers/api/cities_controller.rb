class Api::CitiesController < ApplicationController
  def index
    @cities = City.all
    render 'index.json.jb'
  end

  def show
    @city = City.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @city = City.new
    @city.name = params[:name]
    @city.population = params[:population]
    @city.state_or_province = params[:state_or_province]
    @city.country = params[:country]
    @city.description = params[:description]
    @city.image_url = params[:image_url]
    @city.save
    render 'show.json.jb'
  end

  def update
    @city = City.find_by(id: params[:id])
    @city.name = params[:name] || @city.name
    @city.population = params[:population] || @city.population
    @city.state_or_province = params[:state_or_province] || @city.state_or_province
    @city.country = params[:country] || @city.country
    @city.description = params[:description] || @city.description
    @city.image_url = params[:image_url] || @city.image_url
    @city.save
    render 'show.json.jb'
  end

  def destroy
    @city = City.find_by(id: params[:id])
    @city.destroy
    render 'destroy.html'
  end
end
