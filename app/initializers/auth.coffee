###
  Make sure you've added Em.SimpleAuth to your project
  bower install ember-simple-auth
###
auth =
  name: "authentication",
  initialize: (container, application) ->
    Em.SimpleAuth.setup container, application, {
      crossOriginWhitelist: ['http://localhost:3000']
    }

    Em.SimpleAuth.Authenticators.OAuth2.reopen
      serverTokenEndpoint: ENV.APP.SERVER + "/oauth/token"

`export default auth`
