Obj = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,

  model: ->
    @store.find("post")

`export default Obj`