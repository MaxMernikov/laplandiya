class Admin::SweetsController < Admin::BaseController
  belongs_to :manufacturer, parent_class: Manufacturer

private
  def sweet_params
    params.require(:sweet).permit(:title, :image, :sweets_category_id)
  end

  def collection
    parent.sweets.ordered
  end
end
