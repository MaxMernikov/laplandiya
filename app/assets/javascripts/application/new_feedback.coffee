$.fn.render_form_errors = (model_name, errors) ->
  form = this
  this.clear_form_errors()

  $.each(errors, (field, messages) ->
    input = form.find('input, select, textarea').filter(->
      name = $(this).attr('name')
      if name
        name.match(new RegExp(model_name + '\\[' + field + '\\(?'))
    )
    console.log input.addClass('dddd')
    input.closest('.form-group').addClass('has-error')
    input.parent().append('<span class="help-block">' + $.map(messages, (m) -> m.charAt(0).toUpperCase() + m.slice(1)).join('<br />') + '</span>')
  )

$.fn.clear_form_errors = () ->
  this.find('.form-group').removeClass('has-error')
  this.find('span.help-block').remove()

$.fn.clear_form_fields = () ->
  this.find(':input','.js-form')
      .not(':button, :submit, :reset, :hidden')
      .val('')
      .removeAttr('checked')
      .removeAttr('selected')

$ ->
  $(".js-form").on("ajax:success", (e, data, status, xhr) ->
    $(".js-form").clear_form_errors()
    $(".js-form").clear_form_fields()

    $('.modal').modal('hide')
    $('#' + $(this).data('form') + 'Modal').modal('show')
  ).on("ajax:error", (e, data, status, xhr) ->
    $(".js-form[data-form='" + $(this).data('form') + "']").render_form_errors($(this).data('model'), JSON.parse(data.responseText))
  )