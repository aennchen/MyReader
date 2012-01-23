

# click handler for category tabs
categoryClickHandler = (e) ->
  e.preventDefault()
  
  #switch highlighted tab
  $('#categories .active').removeClass 'active'
  $(e.target).addClass 'active'
  $(e.target.parent).addClass 'active'

  #switch content pane
  $('#content .active').hide().removeClass 'active'
  $(e.target.hash).show().addClass 'active' 
  
# register click on category tabs 
$('body').delegate('#categories ul li a', 'click', categoryClickHandler)

# intial setting of active tabs/content panes
$(document).ready ->
  $('#content div:first').show().addClass 'active'
  $('#categories ul li:first').addClass 'active'
  $('#categories ul li:first a').addClass 'active'