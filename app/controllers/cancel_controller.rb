class CancelController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "canselado")
  end
end
