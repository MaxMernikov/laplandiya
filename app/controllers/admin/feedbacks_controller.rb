class Admin::FeedbacksController < Admin::BaseController
  def index
    @feedbacks_grid = initialize_grid(Feedback,  order: 'feedbacks.created_at',
  order_direction: 'desc')
  end
end
