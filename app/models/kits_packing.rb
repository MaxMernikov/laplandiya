class KitsPacking < ActiveRecord::Base
  belongs_to :kit
  belongs_to :packing
end
