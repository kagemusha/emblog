Controller = Em.ArrayController.extend
  postsSorting: ["createdAt:desc"]
  sortedPosts: Ember.computed.sort('model', 'postsSorting')
  hasPosts: Em.computed.gt("sortedPosts.length", 0)
`export default Controller`