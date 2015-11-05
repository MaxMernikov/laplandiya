class Order < ActiveRecord::Base
  validates :user_name, :phone, presence: true
  serialize :recently_viewed, Array
end