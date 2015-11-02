class Feedback < ActiveRecord::Base
  validates :user_name, :email, :feedback, presence: true
  validates :email, email: true, :if => Proc.new { |f| f.email.present? }
end
