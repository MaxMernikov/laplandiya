class KitsSweet < ActiveRecord::Base
  belongs_to :kit
  belongs_to :sweet

  validates :kit_id, :sweet_id, presence: true
  validates_uniqueness_of :sweet_id, :scope => :kit_id

end
