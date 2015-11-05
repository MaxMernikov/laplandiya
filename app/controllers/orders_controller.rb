class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    if cookies[:recently_viewed].present?
      @order.recently_viewed = JSON.parse(cookies[:recently_viewed])
      cookies.delete(:recently_viewed)
    end

    respond_to do |format|
      if @order.save
        format.html { redirect_to root_path, notice: 'Client was successfully created.' }
        format.js { render json: [{ status: 'success' }] }
      else
        format.html { redirect_to root_path, alert: 'Не все поля формы были заполнены' }
        format.js { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def order_params
    params.require(:order).permit(:user_name, :phone)
  end
end