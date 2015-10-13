class Admin::CompositionsController < Admin::BaseController
  def create
    create!{ collection_url }
  end

  def update
    update!{ collection_url }
  end

private
  def composition_params
    params.require(:composition).permit(:title)
  end
end
