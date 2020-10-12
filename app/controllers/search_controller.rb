class SearchController < ApplicationController
  def index
    @members = SearchFacade.fetch_member_data(params[:state])
  end
end
