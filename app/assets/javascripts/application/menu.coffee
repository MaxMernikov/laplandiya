$ ->
  $('.js-click-memory').click () ->
    document.cookie = "active_menu=" + $(this).data('memory');