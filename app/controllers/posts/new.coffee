Controller = Em.ObjectController.extend

  parser: (->
    (new EpicEditor()).settings.parser
  ).property()

  actions:
    save: ->
      #console.log "HTML: #{")}"
      model = @get('model')
      html = @get('parser')(model.get "markdown")
      model.set "html", html
      model.save()


`export default Controller`