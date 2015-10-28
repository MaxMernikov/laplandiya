class Opinion < ActiveRecord::Base
  scope :ordered, -> { order(created_at: :desc) }

  validates :user_name, :opinion, :answer, :date, presence: true
end
