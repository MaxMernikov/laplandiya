class Packing < ActiveRecord::Base
  validates :image, attachment_presence: true
  has_attached_file :image, styles: { preview: '240x150>', big: '420x420>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :code, :material, presence: true

  has_many :packings_weights
  has_many :weights, through: :packings_weights, dependent: :destroy

  scope :ordered, -> { order(:code) }

  after_commit :kits_packing_check
  before_destroy :clean_kits_packings

  def clean_kits_packings
    KitsPacking.where(packing_id: self.id).destroy_all
  end

  def kits_packing_check
    Kit.packings_check(self)
  end
end
