class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find_by(params["id"])
  end

  # def destroy
  #   # binding.pry
  #   render json: Item.delete(params["id"])
  # end

  def create
    render json: Item.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:id, :name, :description, :image_url)
  end
end
