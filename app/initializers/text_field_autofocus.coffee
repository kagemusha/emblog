# if/when autofocus added to Em core, get rid of this

initializer =
  name: "textfieldAutofocus"
  initialize: ->
    attrBindings = Em.TextSupport.mixins[1].properties.attributeBindings
    attrBindings.push "autofocus"
    Em.TextSupport.reopen
      attributeBindings: attrBindings
      autofocus: false

    #update TextField with autofocusable TextSupport
    Em.TextField = Ember.TextField.extend Em.TextSupport



`export default initializer`