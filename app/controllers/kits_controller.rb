class KitsController < ApplicationController
  def show
    code = Kit.parse_code(params[:id])
    @compositions = Composition.ordered
    @composition = code[:composition]
    @weight = code[:weight]
    @packing = code[:packing]
    @kit = Kit.find_by(composition_id: @composition.id, weight_id: @weight.id)
  end
end