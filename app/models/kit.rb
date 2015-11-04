class Kit < ActiveRecord::Base
  belongs_to :composition
  belongs_to :weight

  has_many :kits_sweets, dependent: :destroy
  accepts_nested_attributes_for :kits_sweets, reject_if: lambda { |a| a[:count].to_i <= 0 || a[:count].blank? }, allow_destroy: true
  has_many :sweets, through: :kits_sweets

  has_many :kits_packings, dependent: :destroy
  accepts_nested_attributes_for :kits_packings, allow_destroy: false

  scope :show, -> { where(show: true) }


  def self.create_kits
    Composition.all.each do |composition|
      Weight.all.each do |weight|
        Kit.find_or_create_by(composition: composition, weight: weight)
      end
    end

    Kit.all.each do |kit|
      kit.weight.packings.each do |packing|
        kit.kits_packings.find_or_create_by(packing_id: packing.id)
      end
    end
  end

  def sweets_count
    self.kits_sweets.pluck(:count).sum
  end

  def self.gen_code(composition, weight, packing)
    "#{composition.code}#{weight.code}#{packing.code.to_s.rjust(2, "0")}"
  end

  def self.parse_code(code)
    {
      composition: Composition.find_by(code: code[0]),
      weight: Weight.find_by(code: code[1].to_i),
      packing: Packing.find_by(code: code[2..3].to_i)
    }
  end

  def packings
    weight.packings
  end
end
