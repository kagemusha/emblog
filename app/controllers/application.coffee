Controller = Em.Controller.extend
  currentUser: Em.computed.alias "sessioncurrentUser"
  email: Em.computed.alias "currentUser.email"

  loggedInName: (->
    @get("email") or ""
  ).property("email")

  hoveringOnGravatar: false
  hideIdForm: Em.computed.not("hoveringOnGravatar")

`export default Controller`