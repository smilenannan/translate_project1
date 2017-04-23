# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
all = ->
  $('#translate_sentence').on 'click', ->
    reqURL = '/translate_sentence' + '?str=' + encodeURIComponent($("#ja_sentence").val())
    $(this).attr('href', reqURL)
    
    $(document).ajaxSuccess (eo, XMLHttpRequest, set) ->
      data = XMLHttpRequest.responseJSON
      console.log data
      $('#en_sentence').val(data.eng)
      return



  $('#start_translate').on 'click', ->
    array_original = $('#original').val().split('。')
    localStorage['original'] = JSON.stringify(array_original)
    $('#ja_sentence').text(array_original[0])
    
    return false


  $('#next_sentence').on 'click', ->
    if $('#edit_en_original').val()==""
      localStorage['edit_en_original'] = ""

    localStorage['edit_en_original'] += ($('#en_sentence').val() + '.')
    $('#edit_en_original').text(localStorage['edit_en_original'])

    array_original = JSON.parse(localStorage['original'])
    array_original.shift()
    localStorage['original'] = JSON.stringify(array_original)
    $('#ja_sentence').text(array_original[0])
    
    return false 

$(document).on('turbolinks:load', all)
