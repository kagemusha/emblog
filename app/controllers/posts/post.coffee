Controller = Em.ObjectController.extend

  actions:
    delete: ->
      @get("model").destroyRecord();
`export default Controller`