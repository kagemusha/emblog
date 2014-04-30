Obj = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,

  actions:
    sessionAuthenticationSucceeded: ->
      @_super()
      id = @controllerFor("login").get("identification")
      localStorage.setItem "email", id
    sessionInvalidationSucceeded: ->
      @_super()
      localStorage.removeItem "email"

`export default Obj`