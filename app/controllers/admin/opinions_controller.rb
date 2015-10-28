class Admin::OpinionsController < Admin::BaseController

private
  def opinion_params
    params.require(:opinion).permit(:user_name, :opinion, :answer, :date)
  end

  def collection
    Opinion.ordered
  end
end
