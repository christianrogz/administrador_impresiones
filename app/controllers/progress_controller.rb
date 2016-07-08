class ProgressController < ApplicationController
  def index
  	@search = Principal.search(params[:q])
    @registros = @search.result
  	@registros = Principal.where(:estado => "progreso")
  end
end
