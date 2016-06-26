class PrincipalController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "impreso")
  end
end
