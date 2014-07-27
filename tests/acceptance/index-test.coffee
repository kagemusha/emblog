`import { test, moduleFor } from 'ember-qunit'`
`import startApp from '../helpers/start-App'`

App = null

moduleFor 'route:index', "Acceptance - IndexRoute",
  #only neccessary if you want to load other items into the runtime
  #needs: ['controller:index']
  setup: ->
    App = startApp()
  teardown: ->
    Ember.run(App, 'destroy')

test "it exists", ->
  visit('/').then ->
    debugger
    ok find("#top-nav").length, "The top nav bar should show up"
    ok find(".nav-item #title").length, "The top nav bar title should show up"
    ok find("ul#post-list").length, "The post list should should up"
    equal find("ul#post-list li").length, 2, "There should be the correct number of posts"

