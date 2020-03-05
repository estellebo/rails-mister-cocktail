class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]

  def index
    @query = params[:query]
    if params[:query]
      @cocktails = Cocktail.all.select { |cocktail| cocktail.name.downcase.include?(params[:query].downcase) }
    else
      @cocktails = Cocktail.all
    end
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
