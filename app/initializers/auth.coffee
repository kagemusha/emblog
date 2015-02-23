`import config from '../config/environment'`
###
  Make sure you've added Em.SimpleAuth to your project
  bower install ember-simple-auth
###
server = config.APP.SERVER

auth =
  name: "authentication",
  initialize: (container, application) ->
    Em.SimpleAuth.setup container, application, {
      crossOriginWhitelist: [server]
      authorizerFactory: 'authorizer:oauth2-bearer'
    }

    Em.SimpleAuth.Authenticators.OAuth2.reopen
      serverTokenEndpoint: server + "/oauth/token"

`export default auth`
