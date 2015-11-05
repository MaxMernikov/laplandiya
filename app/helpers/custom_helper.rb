module CustomHelper
  def custom(key)
    custom = CustomField.find_by(key: key)
    return '' unless custom
    case custom.field_type
    when 'text'
      raw custom.value.gsub(/\r\n/, '<br>')
    when 'array'
      custom.value.split(', ')
    when 'ckeditor'
      raw "<div class='ckeditor-text'>#{custom.value}</div>"
    when 'image'
      image_tag(custom.image) if custom.image_file_name?
    else
      custom.value
    end
  end

  def custom?(key)
    custom = CustomField.find_by(key: key)
    custom.present? && custom.value.present?
  end
end