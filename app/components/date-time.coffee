
Obj = Em.Component.extend
  tagName: "span"

  format: 'MMM D, YYYY h:mm a'
  showIfAgo: true

  agoHrs: 24
  agoCutoff: (->
    moment(Date.now()).subtract("hour", this.get("agoHrs"))
  ).property("agoHrs")

  formattedDate: (->
    date = moment @get('date')
    if date > this.get("agoCutoff")
      if @get("showIfAgo") then date.fromNow() else ""
    else
      date.format(@get('format'))
  ).property("date")

`export default Obj`