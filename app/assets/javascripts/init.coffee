class Init
  constructor: ->
    page = "#{$('body').data('page')}"
    @execute_page_js(page)
  execute_page_js: (page) ->
    if 'function' is typeof window[page]
      klass = window[page]
      new klass()


$(document).on 'turbolinks:load', ->
  new Init()
