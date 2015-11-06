class NotificationMailer < ActionMailer::Base
  default from: "no-reply@laplandiya.by"

  def feedback_created
    mail(
      to: 'maxmernikov@gmail.com',
      subject: "Пользователь оставил свой отзыв на laplandiya.by"
    )
  end

  def order_created(order_id)
    @order = Order.find(order_id)
    mail(
      to: 'maxmernikov@gmail.com',
      subject: "Создан заказ на laplandiya.by"
    )
  end
end
