attr = DS.attr

Obj = DS.Model.extend
  email: attr()
  isContributor: attr()
  name: attr()
  posts: DS.hasMany("post")
  #comments: DS.hasMany("comments")


`export default Obj`
