Controller = Em.ArrayController.extend
  postsSorting: ["createdAt:desc"]
  sortedPosts: Ember.computed.sort('model', 'postsSorting')

`export default Controller`