class PrescriptionsController < ApplicationController
  def new
     @prescription = Prescription.new
  end
  
  def create  
    @prescription = Prescription.new(user_params)
    if @prescription.save()
      flash[:info]  = "Ricetta correttamente inserita"
      redirect_to root_url
    else
      render 'new'
    end
  end
  private
    def user_params
      params.require(:prescription).permit(:bc1, :bc2, :cf)
    end
end
