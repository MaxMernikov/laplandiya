module ApplicationHelper
  def custom(key)
    custom = CustomField.find_by(key: key)
    return '' unless custom
    case custom.field_type
    when 'text'
      raw custom.value.gsub(/\r\n/, '<br>')
    when 'array'
      custom.value.split(',')
    when 'ckeditor'
      raw "<div class='ckeditor-text'>#{custom.value}</div>"
    else
      custom.value
    end
  end

  def custom?(key)
    custom = CustomField.find_by(key: key)
    custom.present? && custom.value.present?
  end

  def boolean_tag(value)
    if value
      'да'
    elsif value == false
      'нет'
    end
  end

  def min_max_cost(weight)
    kits_ids = weight.kits.show.ids
    costs_array = KitsPacking.where(kit_id: kits_ids).pluck(:cost)
    min = costs_array.min || 0
    max = costs_array.max || 0
    {min: min, max: max}
  end  

  def cost_tag(cost)
    "#{cost.to_s.reverse.scan(/\d{1,3}/).join(' ').reverse} руб."
  end 
end
