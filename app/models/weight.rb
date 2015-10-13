class Weight < ActiveRecord::Base
  validates :title, :weight, :code, presence: true

  scope :ordered, -> { order(:weight) }
end
