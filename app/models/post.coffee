attr = DS.attr

Obj = DS.Model.extend
  title: attr('string', {defaultValue: ""}),
  markdown: attr()
  html: attr()
  status: attr()
  publishedAt: attr()
  createdAt: attr()
  isPublished: Em.computed.equal("status", "published")

  #author: DS.belongsTo("user")
  #comments: DS.hasMany("comments")
  #tags: DS.hasMany("tags")



`export default Obj`
