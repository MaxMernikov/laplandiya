module ApplicationHelper
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
