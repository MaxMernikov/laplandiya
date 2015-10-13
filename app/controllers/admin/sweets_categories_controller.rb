class Admin::SweetsCategoriesController < Admin::BaseController

private
  def sweets_category_params
    params.require(:sweets_category).permit(:title)
  end

  def collection
    SweetsCategory.ordered
  end
end
