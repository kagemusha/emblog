HOURS = 1000*3600

Controller = Em.ObjectController.extend

  actions:
    delete: ->
      @get("model").destroyRecord()

`export default Controller`