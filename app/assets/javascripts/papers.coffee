# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
translate = ->
  $('#translate_sentence').on 'click', ->
    reqURL = '/translate_sentence' + '?str=' + encodeURIComponent($("#ja_sentence").val())
    $(this).attr('href', reqURL)
    
    $(document).ajaxSuccess (eo, XMLHttpRequest, set) ->
      data = XMLHttpRequest.responseJSON
      console.log data
      $('#en_sentence').val(data.eng)
      return

$(document).on('turbolinks:load', translate)
