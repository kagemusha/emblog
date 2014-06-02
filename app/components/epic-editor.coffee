Obj = Em.Component.extend
  onInsert: (->
    #probably want to pull these options from somewhere else, but leave here for now
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
    editor.getElement('editor').body.innerText = @get("content") || ""
    editor.on('update', (=>
      markdown = editor.getElement('editor').body.innerText
      @set "content", markdown
    ))
    @set "editor", editor
  ).on("didInsertElement")

  willDestroyElement: ->
    @_super()
    @get("editor").unload()


`export default Obj`