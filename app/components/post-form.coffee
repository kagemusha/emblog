Obj = Em.Component.extend

  parser: (->
    (new EpicEditor()).settings.parser
  ).property()

  save: (publish) ->
    model = @get('model')
    html = @get('parser')(model.get "markdown")
    model.set "html", html
    model.set "status", "published" if publish
    model.save().then( =>
      action = if publish then "published" else "saved"
      @sendAction action
    ).catch( (reason)->
      console.log "failure saving post: "
      console.log reason
      )

  actions:
    save: ->
      @save()
    publish: ->
      @save(true)

`export default Obj`