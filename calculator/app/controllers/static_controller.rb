class StaticController < ApplicationController

  def index
    @dough = Dough.from_params(allowed_parameters)
    @prefer_flour = allowed_parameters[:preferFlour] == "true"
  end

  def dough
    @dough = Dough.from_params(allowed_parameters)

    @meta_title = @dough.build_title
    @meta_description = @dough.build_description
  end

  private

  def allowed_parameters
    params.permit(
      :pizzas,
      :weight_per_pizza,
      :hydration,
      :dough_type,
      :hydration,
      :yeast,
      :sourdough,
      :salt,
      :flour,
      # legacy support
      :yeast,
      :weight,
      :count,
      :water,
      :salt,
      :sourdoughPercent,
      :sourdoughHydration,
      :dryYeastPercent,
      :preferFlour
    )
  end
end
