class SweetsCategory < ActiveRecord::Base
  scope :ordered, -> { order(:title) }

  validates :title, presence: true
end
