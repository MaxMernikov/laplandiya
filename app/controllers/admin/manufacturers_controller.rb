class Admin::ManufacturersController < Admin::BaseController
  def create
    create!{ collection_url }
  end

  def update
    update!{ collection_url }
  end

private
  def manufacturer_params
    params.require(:manufacturer).permit(:title, composition_ids: [])
  end
end
