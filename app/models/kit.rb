class Kit < ActiveRecord::Base
  belongs_to :composition
  belongs_to :weight

  has_many :kits_sweets, dependent: :destroy
  accepts_nested_attributes_for :kits_sweets, reject_if: lambda { |a| a[:count].to_i <= 0 || a[:count].blank? }, allow_destroy: true
  has_many :sweets, through: :kits_sweets


  def self.create_kits
    Composition.all.each do |composition|
      Weight.all.each do |weight|
        Kit.find_or_create_by(composition: composition, weight: weight)
      end
    end
  end

  def sweets_count
    self.kits_sweets.pluck(:count).sum
  end

  def self.gen_code(composition, weight, packing)
    "#{composition.code}#{weight.code.to_s.rjust(2, "0")}#{packing.code.to_s.rjust(3, "0")}"
  end

  def self.parse_code(code)
    {
      composition: Composition.find_by(code: code[0]),
      weight: Weight.find_by(code: code[1..2].to_i),
      packing: Packing.find_by(code: code[3..5].to_i)
    }
  end
end
