class PackingsWeight < ActiveRecord::Base
  belongs_to :packing
  belongs_to :weight
end
