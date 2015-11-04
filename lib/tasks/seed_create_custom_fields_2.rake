desc "Create Custom Field 2"
task seed_create_custom_fields_2: :environment do
  key = 'delivery_first_body'
  CustomField.create(page_type: 'delivery', title: "Первый блок с текстом", key: key, value: "<ul><li>БЕСПЛАТНАЯ ДОСТАВКА&nbsp;<br />по г.Минску при заказе на сумму более 5 млн. руб.</li><li>БЕСПЛАТНАЯ ДОСТАВКА&nbsp;<br />по РБ при заказе на сумму более 15 млн. руб.</li><li>доставка по г. Минску 65 т.руб.</li><li>доставка по Беларуси 150-500 т.руб. (в зависимости от местонахождения пункта разгрузки).</li></ul>", field_type: "ckeditor", pos: 2) unless CustomField.find_by(key: key)

  key = 'delivery_second_body'
  CustomField.create(page_type: 'delivery', title: "Второй блок с текстом", key: key, value: "<p>В этом году для вас мы разработали огромный ассортимент новогодних наборов конфет. Здесь каждый сможет найти для себя идеальный вариант. Все наборы наполняются только самыми вкусными конфетами, при этом, мы строго соблюдаем условия хранения и сроки годности. Используемые нами конфеты имеют сертификаты соответствия качеству. Для всех наших клиентов мы гарантируем четкое соблюдение договорных сроков выполнения заказов при любом количестве партии. Комплектуемые специалистами нашей компании &nbsp;подарки, придутся по вкусу самым требовательным и избалованным изысками клиентам. Мы удовлетворим потребность даже отчаянных сладкоежек. В этом году все комплектуемые нами подарки можно разделить на три группы.</p>", field_type: "ckeditor", pos: 4) unless CustomField.find_by(key: key)

  key = 'contacts_title'
  CustomField.create(page_type: 'contacts', title: "Заголовок страницы", key: key, value: "Контакты и адрес:", field_type: "string", pos: 0) unless CustomField.find_by(key: key)

  key = 'contacts_custom_phones'
  CustomField.create(page_type: 'contacts', title: "Дополнительные телефоны", key: key, value: "+375(17) 269-00-22, +375(17) 269-00-23", field_type: "array", pos: 1) unless CustomField.find_by(key: key)

  key = 'contacts_address'
  CustomField.create(page_type: 'contacts', title: "Дополнительные телефоны", key: key, value: "Республика Беларусь, г. Минск, ул. Селицкого, 19а, 220075.", field_type: "string", pos: 2) unless CustomField.find_by(key: key)
  ap "CustomField create"

end
