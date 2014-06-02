MyRoute = Ember.Route.extend

  model: ->
    @store.createRecord "post"

`export default MyRoute`
