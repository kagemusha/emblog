HOURS = 1000*3600

Controller = Em.ObjectController.extend

  publishedOffsets: (->
    published = moment @get('publishedAt')
    offset = Math.abs new Date() - published
    offset/ HOURS
    if @get("publishedOffsetHrs") < 24
      [published.fromNow(), ""]
    else
      [published.format('MMM D, YYYY'), published.format('h:mm a')]
  ).property("publishedAt")

  publishedDate: (->
    @get("publishedOffsets").objectAt(0)
  ).property('publishedOffsets')

  publishedTime: (->
    @get("publishedOffsets").objectAt(1)
  ).property('publishedOffsets')

  actions:
    delete: ->
      @get("model").destroyRecord()

`export default Controller`