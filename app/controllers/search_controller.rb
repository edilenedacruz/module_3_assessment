class SearchController < ApplicationController
  def index
    @stores = Search.find_stores_with(params[:q])
  end
end
