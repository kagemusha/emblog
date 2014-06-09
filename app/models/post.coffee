attr = DS.attr

Obj = DS.Model.extend
  title: attr('string', {defaultValue: ""}),
  markdown: attr()
  html: attr()
  status: attr()
  published: Em.computed.equal("status", "published")
  createdAt: attr()
  publishedAt: Em.computed.alias("createdAt")  #FIX!!

  #author: DS.belongsTo("user")
  #comments: DS.hasMany("comments")
  #tags: DS.hasMany("tags")


`export default Obj`
