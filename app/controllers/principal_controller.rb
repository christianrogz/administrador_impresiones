class PrincipalController < ApplicationController
  def index
  	@registros = Principal.where(:estado => "impreso")
  end
  def finder
  	@usuario = params[:usuario]
  	@carrera = params[:carrera]
  	@registros = Principal.where(:usuario => @usuario, :carrera => @carrera, :estado => "impreso")
  end
end
