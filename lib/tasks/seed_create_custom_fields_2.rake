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

  key = 'modal_order_title'
  CustomField.create(page_type: 'modals', title: "Заказ - Заголовок модального окна", key: key, value: "Спасибо!\r\nВаш заказ принят!", field_type: "text", pos: 0) unless CustomField.find_by(key: key)

  key = 'modal_order_body'
  CustomField.create(page_type: 'modals', title: "Заказ - Текст модального окна", key: key, value: '<p>Наши менеджеры выставят Вам счёт для оплаты.<br />Оплата производится в любом отделении банка,<br />перечислив деньги на расчётный счёт указанный в счёт-фактуре.<br /><br /><span style="color:#be151b">Оплачивайте счета до оканчания акций со скидками!!!</span><br />&nbsp;<br />Также Вы можете произвести оплату <span style="color:#28559d">наличными</span><br />при заказе<span style="color:#28559d"> до 10 наборов</span> в офисе нашей компании.</p>', field_type: "ckeditor", pos: 0) unless CustomField.find_by(key: key)

  key = 'modal_get_call_title'
  CustomField.create(page_type: 'modals', title: "Обратный звонок - Заголовок модального окна обратного звонка", key: key, value: "Заказать звонок", field_type: "text", pos: 1) unless CustomField.find_by(key: key)

  key = 'modal_get_call_body'
  CustomField.create(page_type: 'modals', title: "Обратный звонок - Текст модального окна", key: key, value: "Оставьте информацию о себе и наши менеджеры свяжутся с вами в ближайшее время", field_type: "ckeditor", pos: 1) unless CustomField.find_by(key: key)

  key = 'modal_get_call_succes_title'
  CustomField.create(page_type: 'modals', title: "Обратный звонок - Успешная заявка - Заголовок модального окна", key: key, value: "Ожидайте звонка", field_type: "text", pos: 2) unless CustomField.find_by(key: key)

  key = 'modal_get_call_succes_body'
  CustomField.create(page_type: 'modals', title: "Обратный звонок - Успешная заявка - Текст модального окна", key: key, value: "", field_type: "ckeditor", pos: 2) unless CustomField.find_by(key: key)

  key = 'modal_feedback_title'
  CustomField.create(page_type: 'modals', title: "Отзыв - Заголовок модального окна", key: key, value: "Спасибо за добавление отзыва!", field_type: "text", pos: 3) unless CustomField.find_by(key: key)

  key = 'modal_feedback_body'
  CustomField.create(page_type: 'modals', title: "Отзыв - Текст модального окна", key: key, value: "", field_type: "ckeditor", pos: 3) unless CustomField.find_by(key: key)

  key = 'seo_text'
  CustomField.create(page_type: 'index', title: "SEO текст в футере", key: key, value: "", field_type: "ckeditor", pos: 4) unless CustomField.find_by(key: key)

  key = 'emails'
  CustomField.create(page_type: 'contacts', title: "Email", key: key, value: "info@laplandiya.by", field_type: "array", pos: 3) unless CustomField.find_by(key: key)

  key = 'meta_title_index'
  CustomField.create(page_type: 'index', title: "Meta Title", key: key, value: "", field_type: "string", pos: 97) unless CustomField.find_by(key: key)

  key = 'meta_keywords_index'
  CustomField.create(page_type: 'index', title: "Meta Keywords", key: key, value: "", field_type: "string", pos: 98) unless CustomField.find_by(key: key)

  key = 'meta_description_index'
  CustomField.create(page_type: 'index', title: "Meta Description", key: key, value: "", field_type: "string", pos: 99) unless CustomField.find_by(key: key)

  key = 'meta_title_delivery'
  CustomField.create(page_type: 'delivery', title: "Meta Title", key: key, value: "", field_type: "string", pos: 97) unless CustomField.find_by(key: key)

  key = 'meta_keywords_delivery'
  CustomField.create(page_type: 'delivery', title: "Meta Keywords", key: key, value: "", field_type: "string", pos: 98) unless CustomField.find_by(key: key)

  key = 'meta_description_delivery'
  CustomField.create(page_type: 'delivery', title: "Meta Description", key: key, value: "", field_type: "string", pos: 99) unless CustomField.find_by(key: key)

  key = 'meta_title_contacts'
  CustomField.create(page_type: 'contacts', title: "Meta Title", key: key, value: "", field_type: "string", pos: 97) unless CustomField.find_by(key: key)

  key = 'meta_keywords_contacts'
  CustomField.create(page_type: 'contacts', title: "Meta Keywords", key: key, value: "", field_type: "string", pos: 98) unless CustomField.find_by(key: key)

  key = 'meta_description_contacts'
  CustomField.create(page_type: 'contacts', title: "Meta Description", key: key, value: "", field_type: "string", pos: 99) unless CustomField.find_by(key: key)


  key = 'meta_title_opinions'
  CustomField.create(page_type: 'opinions', title: "Meta Title", key: key, value: "", field_type: "string", pos: 97) unless CustomField.find_by(key: key)

  key = 'meta_keywords_opinions'
  CustomField.create(page_type: 'opinions', title: "Meta Keywords", key: key, value: "", field_type: "string", pos: 98) unless CustomField.find_by(key: key)

  key = 'meta_description_opinions'
  CustomField.create(page_type: 'opinions', title: "Meta Description", key: key, value: "", field_type: "string", pos: 99) unless CustomField.find_by(key: key)

  key = 'recomendations'
  CustomField.create(page_type: 'recomendations', title: "Наборы для блока рекомендации", key: key, value: "'1123', '2123', '2132'", field_type: "array", pos: 0) unless CustomField.find_by(key: key)

  ap "CustomField create"

end
