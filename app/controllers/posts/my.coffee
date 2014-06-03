Controller = Em.ArrayController.extend
  drafts: (-> @get('model').filterBy("status","draft")).property("model", "model.@each")
  published: (-> @get('model').filterBy("status","published")).property("model", "model.@each")

`export default Controller`