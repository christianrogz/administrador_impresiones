class ProgressController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "progreso")
  end
end
