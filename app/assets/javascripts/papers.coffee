# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
all = ->
  $('#next_sentence').hide()
  localStorage['original'] = null
  $('#original').highlightTextarea(id: 'demoCustom')

  $('#start_translate').on 'click', ->
    array_original = $('#original').val().split('。')
    localStorage['original'] = JSON.stringify(array_original)
    $('#ja_sentence').val(array_original[0])

    reqURL = '/translate_sentence' + '?str=' + encodeURIComponent($("#ja_sentence").val())
    $(this).attr('href', reqURL)
    
    $(document).ajaxSuccess (eo, XMLHttpRequest, set) ->
      data = XMLHttpRequest.responseJSON
      $('#en_sentence').val(data.eng)
      $('#translated_ja_sentence').val(data.eng)
      return
 
    $('#original').highlightTextarea('setWords', $('#ja_sentence').val())
    $('#start_translate').hide()
    $('#next_sentence').show()


  $('#next_sentence').on 'click', ->
    if $('#edit_en_original').val()==""
      localStorage['edit_en_original'] = ""

    localStorage['edit_en_original'] += ($('#en_sentence').val() + '. ')
    $('#edit_en_original').val(localStorage['edit_en_original'])

    array_original = JSON.parse(localStorage['original'])
    array_original.shift()
    localStorage['original'] = JSON.stringify(array_original)
    $('#ja_sentence').val(array_original[0])

    reqURL = '/translate_sentence' + '?str=' + encodeURIComponent($("#ja_sentence").val())
    $(this).attr('href', reqURL)
    
    $(document).ajaxSuccess (eo, XMLHttpRequest, set) ->
      data = XMLHttpRequest.responseJSON
      $('#en_sentence').val(data.eng)
      $('#translated_ja_sentence').val(data.eng)
      return

    $('#original').highlightTextarea('setWords', $('#ja_sentence').val())

    if localStorage['original'] == '[""]'
      alert 'お疲れ様です。世界に飛び出しましょう。'

$(document).ready(all)
