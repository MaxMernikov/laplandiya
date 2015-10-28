window.onload = ->
  $('.cycle-slideshow').cycle('pause')
  $('.cycle-slideshow').cycle('goto', $('.weight-menu-item.active').data('slide'))
  $('.js-slideshow-control a').click (e) ->
    event.preventDefault()
    $('.weight-menu-item.active').removeClass('active')
    $(this).addClass('active')
    $('.cycle-slideshow').cycle('goto', $(this).data('slide'))
