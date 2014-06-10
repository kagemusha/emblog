###
  Make sure you've added Em.SimpleAuth to your project
  bower install ember-simple-auth
###
auth =
  name: "authentication",
  initialize: (container, application) ->
    Em.SimpleAuth.setup container, application, {
      crossOriginWhitelist: ['http://localhost:3000']
      authorizerFactory: 'authorizer:oauth2-bearer'
    }

    Em.SimpleAuth.Authenticators.OAuth2.reopen
      serverTokenEndpoint: EmblogENV.APP.SERVER + "/oauth/token"

`export default auth`
