class Kit < ActiveRecord::Base
  belongs_to :composition
  belongs_to :weight

  has_many :kits_sweets, dependent: :destroy
  accepts_nested_attributes_for :kits_sweets, reject_if: lambda { |a| a[:count].to_i <= 0 || a[:count].blank? }, allow_destroy: true


  def self.create_kits
    Composition.all.each do |composition|
      Weight.all.each do |weight|
        Kit.find_or_create_by(composition: composition, weight: weight)
      end
    end
  end
end
