attr = DS.attr

Obj = DS.Model.extend
  title: attr('string', {defaultValue: ""}),
  markdown: attr()
  html: attr()
  status: attr()
  publishedAt: attr()
  createdAt: attr()
  isPublished: Em.computed.equal("status", "published")

  author: DS.belongsTo("author")
  #comments: DS.hasMany("comments")
  #tags: DS.hasMany("tags")

  authorName: Em.computed.any("author.name", "author.email")


`export default Obj`
