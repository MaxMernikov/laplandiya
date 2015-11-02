$.fn.render_form_errors = (model_name, errors) ->
  form = this
  this.clear_form_errors()

  $.each(errors, (field, messages) ->
    input = form.find('input, select, textarea').filter(->
      name = $(this).attr('name')
      if name
        name.match(new RegExp(model_name + '\\[' + field + '\\(?'))
    )
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

window.onload = ->
  $("#new_feedback").on("ajax:success", (e, data, status, xhr) ->
    $("#new_feedback").clear_form_errors()
    $("#new_feedback").clear_form_fields()
    $('#myModal').modal()
  ).on("ajax:error", (e, data, status, xhr) ->
    $("#new_feedback").render_form_errors('feedback', JSON.parse(data.responseText))
  )