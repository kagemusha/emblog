Controller = Em.Controller.extend
  loggedInName: (->
    @get("session.currentUser.email") or ""
  ).property("session.currentUser")

`export default Controller`