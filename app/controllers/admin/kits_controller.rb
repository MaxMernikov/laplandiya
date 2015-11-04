class Admin::KitsController < Admin::BaseController
  def index
    @compositions = Composition.ordered
    @weights = Weight.ordered
  end

  def change_cost
    if params[:composition_id].present?
      kits = Kit.where(composition_id: params[:composition_id])
    elsif params[:weight_id].present?
      kits = Kit.where(weight_id: params[:weight_id])
    elsif params[:kit_id].present?
      kits = Kit.where(id: params[:kit_id])
    end

    kits.each do |kit|
      kit.kits_packings.each do |kp|
        if params[:cost].present?
          cost = params[:cost].to_i
        elsif params[:percent].present?
          percent = (100 + params[:percent].to_i).to_f / 100 
          cost = kp.cost.to_f * percent
        end

        kp.update_column(:cost, cost)
      end
    end

    redirect_to :back
  end

private
  def kit_params
    params.require(:kit).permit(:show, kits_sweets_attributes: [:id, :count, :sweet_id, :_destroy], kits_packings_attributes: [:id, :cost, :discount])
  end
end
