class Admin::OrdersController < Admin::BaseController
  def index
    @orders_grid = initialize_grid(Order,  order: 'orders.created_at',
  order_direction: 'desc')
  end
end
