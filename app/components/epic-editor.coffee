Obj = Em.Component.extend
  onInsert: (->
    opts =  {
      container: "epic-editor"
      basePath: "/assets/epiceditor/themes/"
      theme:
        base: 'base/epiceditor.css'
        editor: 'editor/epic-light.css'
        preview: 'preview/github.css'
    }
    editor = new EpicEditor(opts)
    editor.load()
    editor.getElement('editor').body.innerHTML = @get("content") || ""
    editor.on('update', (=>
      @set "content", editor.getElement('editor').body.innerHTML
    ))
  ).on("didInsertElement")


`export default Obj`