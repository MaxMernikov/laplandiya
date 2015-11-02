desc "Create Custom Field"
task seed_create_custom_fields: :environment do
  CustomField.destroy_all
  CustomField.create([
    { page_type: 'index', title: "Номер телефона Velcom", key: "velcom_phone", value: "+375(44) 322-00-22", field_type: "string", pos: 0 }, 
    { page_type: 'index', title: "Номер телефона Mts", key: "mts_phone", value: "+375(33) 322-00-22", field_type: "string", pos: 0 }, 
    { page_type: 'index', title: "Кнопка заказать звонок", key: "get_call", value: "Заказать звонок!", field_type: "string", pos: 1}, 
    { page_type: 'index', title: "Время работы", key: "work_time", value: "Мы работаем\r\nc 9:00 до 20:00", field_type: "text", pos: 2 },
    { page_type: 'index', title: "Дни работы", key: "work_days", value: "пн, вт, ср, чт, пт, сб", field_type: "array", pos: 2},
    { page_type: 'index', title: "Текст от деда мороза", key: "banner_santa", value: "1% ДЕНЕЖНЫХ СРЕДСТВ С\r\nКАЖДОГО НАБОРА\r\nМЫ ДАРИМ\r\nДЕТСКИМ ДОМАМ!", field_type: "text", pos: 3 },
    { page_type: 'index', title: "Номер телефона", key: "phone", value: "+375(17) 269-00-22", field_type: "string", pos: 0 },

    { page_type: 'delivery', title: "Первый заголовок", key: "delivery_first_title", value: "Сколько стоит доставка?", field_type: "string", pos: 0 },
    { page_type: 'delivery', title: "Первый блок текста", key: "delivery_first_body", value: "Сколько стоит доставка?", field_type: "ckeditor", pos: 1 },
    { page_type: 'delivery', title: "Текст в машине", key: "delivery_car_body", value: "Мы осуществляем доставку по всей территории Республики Беларусь!", field_type: "string", pos: 2 },

    { page_type: 'delivery', title: "Второй заголовок", key: "delivery_second_title", value: "Как произвести оплату", field_type: "string", pos: 3 }


  ])
  ap "CustomField create"
end
