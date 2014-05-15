Obj = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,

  model: ->
    @store.find("post", { status: "published" })

`export default Obj`