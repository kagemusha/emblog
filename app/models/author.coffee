attr = DS.attr

Obj = DS.Model.extend
  name: attr()
  email: attr()

  posts: DS.hasMany("posts")

`export default Obj`
