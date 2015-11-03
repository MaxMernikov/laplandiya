$ ->
  $('.cycle-slideshow').cycle('goto', $('.js-control.active').data('slide'))
  $('.js-control').click (e) ->
    event.preventDefault()
    $('.js-control.active').removeClass('active')
    $(this).addClass('active')
    $('.cycle-slideshow').cycle('goto', $(this).data('slide'))
