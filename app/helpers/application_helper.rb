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
    "#{cost.to_s.reverse.scan(/\d{1,3}/).join(' ').reverse}"
  end

  def kit_codes
    kit_codes = []
    if cookies[:recently_viewed].present?
      kit_codes += (JSON.parse(cookies[:recently_viewed]).reverse)[1..3]
    end

    if kit_codes.size > 0
      kit = Kit.parse_code(kit_codes[0])
      kit[:weight].kits.where(show: true).each do |kit|
        kit_codes << Kit.gen_code(kit.composition, kit.weight, kit.packings.sample)
      end
    end
    kit_codes += custom('recommendations').shuffle
    kit_codes.uniq.take(6)
  end
end
