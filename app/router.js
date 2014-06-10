import Ember from 'ember';

var Router = Ember.Router.extend({
  location: EmblogENV.locationType
});

Router.map(function() {
  this.route('unkown', {path: '/*wildcard'});

  this.route("login");
  this.route("registration");

  this.resource('posts', function(){
    this.route("index", {path: "/"});
    this.route("new");
    this.route("my");
  });

  this.resource("post", {path: "/post/:post_id"}, function(){
    this.route("edit");
    //edit, etc
  });
});

export default Router;
