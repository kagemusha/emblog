HOURS = 1000*3600

Obj = Em.Component.extend
  tagName: "span"

  format: 'MMM D, YYYY h:mm a'
  agoHrs: 24
  showIfAgo: true
  formattedDate: (->
    date = moment @get('date')
    offsetHrs = (Date.now() - date)/HOURS
    if offsetHrs < @get("agoHrs")
      if @get("showIfAgo") then date.fromNow() else ""
    else
      date.format(@get('format'))
  ).property("date")

`export default Obj`