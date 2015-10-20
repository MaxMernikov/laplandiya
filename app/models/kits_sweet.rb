class KitsSweet < ActiveRecord::Base
  belongs_to :kit
  belongs_to :sweet

  validates :kit_id, :sweet_id, presence: true
end
