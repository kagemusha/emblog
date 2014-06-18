HOURS = 1000*3600

Obj = Em.Component.extend
  tagName: "span"

  dateFormat: 'MMM D, YYYY'
  timeFormat: 'h:mm a'
  agoHrs: 24
  timeOnly: false
  dateOnly: false

  offsets: (->
    date = moment @get('date')
    offsetHrs = (Date.now() - date)/HOURS
    if offsetHrs < @get("agoHrs")
      [date.fromNow(), ""]
    else
      [date.format(@get('dateFormat')), date.format(@get('timeFormat'))]
  ).property("date")

  formattedDate: (->
    @get("offsets").objectAt(0)
  ).property('offsets')

  formattedTime: (->
    @get("offsets").objectAt(1)
  ).property('offsets')

`export default Obj`