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
  	@batman = a.all	
  end
  def votos_superman

  	b	= VotosSuperman.new
  	if params[:nombre].present?
  		b.nombre = params[:nombre]
  	end
  	if params[:email].present?
  		b.email = params[:email]
  	end
  	if params[:nombre].present? || params[:email].present?
  		b.save
  	end
  	redirect_to pages_batmanvssuperman_path notice: "Su voto ha sido registrado"
  	@batman = b.all	
  end

end
