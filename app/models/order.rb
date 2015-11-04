class Order < ActiveRecord::Base
  validates :user_name, :phone, presence: true
end
