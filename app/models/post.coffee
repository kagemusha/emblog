attr = DS.attr

Obj = DS.Model.extend
  title: attr('string', {defaultValue: ""}),
  markdown: attr()
  html: attr()
  status: attr()
  createdAt: attr()
  #author: DS.belongsTo("user")
  #comments: DS.hasMany("comments")
  #tags: DS.hasMany("tags")


`export default Obj`
