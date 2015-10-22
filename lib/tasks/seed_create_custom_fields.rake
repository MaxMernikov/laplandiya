desc "Create Custom Field"
task seed_create_custom_fields: :environment do
  ap "Compositions create"
  CustomField.create([
    { title: "Номер телефона Velcom", key: "velcom_phone", value: "+375(44) 322-00-22", field_type: "string", pos: 0 }, 
    { title: "Номер телефона Mts", key: "mts_phone", value: "+375(33) 322-00-22", field_type: "string", pos: 0 }, 
    { title: "Кнопка заказать звонок", key: "get_call", value: "Заказать звонок!", field_type: "string", pos: 1}, 
    { title: "Время работы", key: "work_time", value: "Мы работаем\r\nc 9:00 до 20:00", field_type: "text", pos: 2 },
    { title: "Дни работы", key: "work_days", value: "пн, вт, ср, чт, пт, сб", field_type: "array", pos: 2},
    { title: "Текст от деда мороза", key: "banner_santa", value: "1% ДЕНЕЖНЫХ СРЕДСТВ С\r\nКАЖДОГО НАБОРА\r\nМЫ ДАРИМ\r\nДЕТСКИМ ДОМАМ!", field_type: "text", pos: 3 },
    { title: "Номер телефона", key: "phone", value: "+375(17) 269-00-22", field_type: "string", pos: 0 }
  ]
end
