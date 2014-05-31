Controller = Em.ArrayController.extend
  drafts: (-> @get('model').filterBy("status","draft")).property("model")
  published: (-> @get('model').filterBy("status","published")).property("model")

`export default Controller`