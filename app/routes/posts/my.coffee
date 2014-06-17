MyRoute = Ember.Route.extend Ember.SimpleAuth.AuthenticatedRouteMixin,

  beforeModel: ->
    if not @get("session.currentUser.isContributor")
      @transitionTo "index"

  model: ->
    @store.find("post", {type: "contributed"})

`export default MyRoute`
