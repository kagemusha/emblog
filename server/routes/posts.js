posts = [{title: "kuma", markdown: "a post", html: "<p>a post</p>"}];

module.exports = function(app) {
  app.get('/posts', function(req, res) {
    console.log("post")
    res.json(posts);
  });
};
