class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        NotificationMailer.feedback_created(@feedback.id).deliver
        format.html { redirect_to opinions_path, notice: 'Client was successfully created.' }
        format.js { render json: [{ status: 'success' }] }
      else
        format.html { redirect_to opinions_path, alert: 'Не все поля формы были заполнены' }
        format.js { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:user_name, :email, :feedback)
  end
end