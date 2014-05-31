attr = DS.attr

Obj = DS.Model.extend
  email: attr()
  name: attr()

  isContributor: attr()
  posts: DS.hasMany("post")
  #comments: DS.hasMany("comments")


`export default Obj`
