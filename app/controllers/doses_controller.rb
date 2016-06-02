class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create, :destroy]
  before_action :find_ingredients, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    # @dose = @cocktail.doses.build(dose_params)
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    # @dose.ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.ingredient = Ingredient.find_by(name: params[:dose][:ingredient])
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy


    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def find_ingredients
    @ingredients = Ingredient.all
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
