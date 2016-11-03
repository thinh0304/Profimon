# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


AdminCheck = ->
  if document.getElementById('user_admin_true').checked
    document.getElementById('ifAdmin').style.display = 'block'
  else
    document.getElementById('ifAdmin').style.display = 'none'
  return

