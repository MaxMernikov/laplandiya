class Admin::WeightsController < Admin::BaseController

private
  def weight_params
    params.require(:weight).permit(:title, :weight, :code)
  end

  def collection
    Weight.ordered
  end
end
