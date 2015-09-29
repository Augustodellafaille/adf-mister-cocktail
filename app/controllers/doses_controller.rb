class DosesController < ApplicationController

  def show
  end

  def create
    @cocktail = Cocktail.find(params[:id])

  end

  def new
     @cocktail = Cocktail.find(params[:id])
  end

  def destroy
  end

  private

  def doses_params
      params.require(:cocktails).permit(:description, :ingredients)
    end
end
