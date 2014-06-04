Controller = Em.ObjectController.extend

  parser: (->
    (new EpicEditor()).settings.parser
  ).property()

  actions:
    published: ->
      console.log "published"
      @transitionToRoute "posts.my"

`export default Controller`