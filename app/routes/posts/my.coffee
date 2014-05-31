MyRoute = Ember.Route.extend

  beforeModel: ->
    if not @get("session.currentUser.isContributor")
      @transitionTo "index"

  model: ->
    @store.find("post", {type: "contributed"})

`export default MyRoute`
