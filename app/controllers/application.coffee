Controller = Em.Controller.extend
  needs: ['application']
  currentUser: null
  loggedInName: (->
    @get("currentUser.email") or ""
  ).property("currentUser")

`export default Controller`