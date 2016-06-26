class HistorialController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "entregado")
  end
end
