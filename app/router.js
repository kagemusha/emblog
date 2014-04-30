var Router = Ember.Router.extend({
  location: 'auto'
});

Router.map(function() {
  this.route("login");
});

export default Router;
