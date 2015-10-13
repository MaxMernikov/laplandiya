class Admin::PackingsController < Admin::BaseController

private
  def packing_params
    params.require(:packing).permit(:code, :image, :show, weight_ids: [])
  end

  def collection
    Packing.ordered
  end
end
