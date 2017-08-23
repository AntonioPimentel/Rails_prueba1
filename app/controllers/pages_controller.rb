class PagesController < ApplicationController
  def batman
  end
  def votos_batman

  	a	= VotosBatman.new
  	if params[:nombre].present?
  		a.nombre = params[:nombre]#
  	end
  	if params[:email].present?
  		a.email = params[:email]
  	end
  	if params[:nombre].present? || params[:email].present?
  		a.save
  	end
  	redirect_to pages_batmanvssuperman_path notice: "Su voto ha sido registrado"
  	@batman = VotosBatman.all	
  end
  def votos_superman

  	a	= VotosSuperman.new
  	if params[:nombre].present?
  		a.nombre = params[:nombre]#
  	end
  	if params[:email].present?
  		a.email = params[:email]
  	end
  	if params[:nombre].present? || params[:email].present?
  		a.save
  	end
  	redirect_to pages_batmanvssuperman_path notice: "Su voto ha sido registrado"
  	@batman = VotosSuperman.all	
  end

end
