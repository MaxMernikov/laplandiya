class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    :styles => { :content => '800>', :thumb => '118x100#' }

  # validates_attachment_presence :data
  # validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_content_type :data, :content_type => [/\Aimage\/.*\Z/, "application/octet-stream"]
  # validates_attachment_file_name :data, :matches => [/png\Z/, /jpe?g\Z/, /PNG\Z/]

  def url_content
    url(:content)
  end
end
