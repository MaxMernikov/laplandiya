class KitsController < ApplicationController
  def show
    set_meta('kit_page')

    code = Kit.parse_code(params[:id])
    @compositions = Composition.ordered
    @composition = code[:composition]
    @weight = code[:weight]
    @packing = code[:packing]
    @kit = Kit.find_by(composition_id: @composition.id, weight_id: @weight.id)

    if cookies[:recently_viewed].present?
      recently_viewed = JSON.parse(cookies[:recently_viewed])
      cookies[:recently_viewed] = JSON.generate( recently_viewed.push(params[:id]).uniq )
    else
      cookies[:recently_viewed] = JSON.generate([params[:id]])
    end
  end
end