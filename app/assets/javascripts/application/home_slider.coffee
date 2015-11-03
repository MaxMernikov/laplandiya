$ ->
  if $('.cycle-slideshow').length
    $('.cycle-slideshow').cycle
      slides: '> div'
      fx: 'fadeout'
      autoHeight: 'container'
      timeout: 0


    $('.js-control').click (e) ->
      event.preventDefault()
      $('.js-control.active').removeClass('active')
      $(this).addClass('active')
      $('.cycle-slideshow').cycle('goto', $(this).data('slide'))

    $('.cycle-slideshow').cycle('goto', $('.js-control.active').data('slide'))
