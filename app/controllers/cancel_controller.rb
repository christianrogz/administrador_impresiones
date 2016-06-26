class CancelController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "cancelado")
  end
end
