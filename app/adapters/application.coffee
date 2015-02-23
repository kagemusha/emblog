`import DS from 'ember-data'`
`import config from '../config/environment'`

Obj  = DS.ActiveModelAdapter.extend
  host: config.APP.SERVER

`export default Obj`

