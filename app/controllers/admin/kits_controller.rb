class Admin::KitsController < Admin::BaseController
  def index
    @compositions = Composition.ordered
    @weights = Weight.ordered
  end

private
  def kit_params
    params.require(:kit).permit(:show, kits_sweets_attributes: [:id, :count, :sweet_id, :_destroy])
  end
end
