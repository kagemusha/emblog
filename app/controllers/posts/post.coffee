Controller = Em.ObjectController.extend
  fmtCreatedAt: (->
    createdTime = moment(@get 'createdAt')
    offset = Math.abs new Date() - createdTime
    offsetHrs = offset/ (1000 * 3600)
    if offsetHrs < 24
      createdTime.fromNow()
    else
      createdTime.format('MMMM Do YYYY, h:mm a')
  ).property()

`export default Controller`