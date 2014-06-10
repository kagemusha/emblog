Obj = Ember.Component.extend
  tagName: "span"
  size: 20
  email: ''

  url: (->
    email = @get('email')
    size = @get('size')
    'http://www.gravatar.com/avatar/' + md5(email) + '?s=' + size;
  ).property('email', 'size')

`export default Obj`