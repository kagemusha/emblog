Obj = Em.Component.extend

  parser: (->
    (new EpicEditor()).settings.parser
  ).property()

  actions:
    save: ->
      model = @get('model')
      html = @get('parser')(model.get "markdown")
      model.set "html", html
      model.save()

`export default Obj`