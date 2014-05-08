var Router = Ember.Router.extend({
  location: 'auto'
});

Router.map(function() {
  this.route("login");
  this.route("registration");
  this.resource('posts', function(){
    this.route("index", {path: "/"});
  });
  this.resource("post", {path: "/post/:post_id"});
});

export default Router;
