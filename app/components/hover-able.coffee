Obj = Ember.Component.extend
  hovering: false

  mouseEnter: ->
    @set "hovering", true

  mouseLeave: ->
    @set "hovering", false

`export default Obj`