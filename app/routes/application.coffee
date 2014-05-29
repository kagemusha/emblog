Obj = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,

  getCurrentUser: ->
    @store.find("user", "current_user").then( (user)=>
      @controllerFor("application").set "currentUser", user
      # em data creates a rec w id current_user. since what we're returning doesn't
      # have this id, this rec hangs around and needs to be cleaned up
      @store.unloadRecord _this.store.getById("user", "current_user")
    ).catch( (error)->
      console.log "something bad happened while getting user info"
      console.log error
    )

  afterModel: ->
    if localStorage.getItem "ember_simple_auth:access_token"
      @getCurrentUser()
  actions:
    sessionAuthenticationSucceeded: ->
      @_super()
      @getCurrentUser()
    sessionInvalidationSucceeded: ->
      @_super()
      localStorage.removeItem "email"

`export default Obj`