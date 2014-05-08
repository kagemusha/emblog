attr = DS.attr

Obj = DS.Model.extend
  title: attr('string', {defaultValue: ""}),
  body: attr()
  createdAt: attr()
  #author: DS.belongsTo("user")
  #comments: DS.hasMany("comments")
  #tags: DS.hasMany("tags")


`export default Obj`
