class SearchController < ApplicationController
  def index
    @stores = Search.new.find_stores_with(params[:q])
  end
end
