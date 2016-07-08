class PrincipalController < ApplicationController
  def index
  	#@registros = Principal.where(:estado => "impreso")
  	#@registros = Principal.where(:carrera => "9-ITI-1")
  	@search = Principal.search(params[:q])
    @registros = @search.result
    @registros = @registros.where(:estado => "impreso")
  	#if params[:usuario].present?
      #@registros = @registros.where("usuario ILIKE ?", "%#{params[:usuario]}%")
     # @registros = Principal.where(:usuario => "#{params[:usuario]}", :estado => "impreso")
    #end   
    #if params[:carrera].present?
    #  @registros = Principal.where(:carrera => "#{params[:carrera]}", :estado => "impreso")
    #end
    #if params[:archivo].present?
    #  @registros = Principal.where(:archivo => "#{params[:archivo]}", :estado => "impreso")
    #end 
    #if params[:fecha].present?
    #  @registros = Principal.between(:fecha1 => "#{params[:fecha1]}", :estado => "impreso")
    #end
    #@principal = Principal.ransack(estado_cont: 'impreso').result.to_sql
     
    #if params[:category_id].present?
    #  @expenses = @expenses.where("category_id = ?", params[:category_id])
    #end    
  end
  #def finder
  #	@usuario = params[:usuario]
  #	@carrera = params[:carrera]
  #	@registros = Principal.where(:usuario => @usuario, :carrera => @carrera, :estado => "impreso")
  #end
end
