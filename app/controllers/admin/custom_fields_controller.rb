class Admin::CustomFieldsController < Admin::BaseController
  def create
    create!{ collection_url }
  end

  def update
    update!{ collection_url }
  end

private
  def custom_field_params
    params.require(:custom_field).permit(:title, :key, :value, :field_type, :pos)
  end

  def collection
    CustomField.ordered
  end
end
