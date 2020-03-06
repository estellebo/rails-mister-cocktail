class PagesController < ApplicationController
  def home
    @query = params[:query]
    if params[:query]
      @cocktails = Cocktail.all.select { |cocktail| cocktail.name.downcase.include?(params[:query].downcase) }
    else
      @cocktails = Cocktail.all
    end
  end
end
