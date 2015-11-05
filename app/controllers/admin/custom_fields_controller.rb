class Admin::CustomFieldsController < Admin::BaseController
  def create
    create!{ collection_url(page_type: resource.page_type) }
  end

  def update
    update!{ collection_url(page_type: resource.page_type) }
  end

private
  def custom_field_params
    params.require(:custom_field).permit(:title, :key, :value, :field_type, :pos, :image, :delete_image)
  end

  def collection
    if params[:page_type]
      CustomField.where(page_type: params[:page_type]).ordered
    else
      CustomField.ordered
    end
  end
end
