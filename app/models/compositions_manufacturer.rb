class CompositionsManufacturer < ActiveRecord::Base
  belongs_to :composition
  belongs_to :manufacturer
end
