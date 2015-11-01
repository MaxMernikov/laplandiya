class KitsController < ApplicationController
  def show
    code = Kit.parse_code(params[:id])
    @kit = Kit.find(1)
    @compositions = Composition.ordered
    @composition = code[:composition]
    @weight = code[:weight]
    @packing = code[:packing]
  end
end