# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

url = '/sources/search.json'

inputQueryHandler = (e) ->
  if $('#query').val().length > 2 
    $.getJSON url, {q: $('#query').val() }, (data) ->
      if data[0].status == 'ok' 
        #update result count
        $('#count').text data[0].msg
        
        #just remove all children of #result-list
        $('#result-list').children().remove()

        #go through the results and either add them to the list  
        $.each data[0].result, (key, val) ->
          $('#blanco-result h2').text val.title
          $('#blanco-result p a').attr('href', val.url)
          $('#blanco-result p a').text val.url
          $('#blanco-result').clone().removeAttr('id').appendTo('#result-list')
          
$(document).delegate('#query', 'keyup', inputQueryHandler)