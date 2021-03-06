/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');
var mergeTrees = require('broccoli-merge-trees');
var pickFiles = require('broccoli-static-compiler');

var app = new EmberApp({
  name: require('./package.json').name,

  // for some large projects, you may want to uncomment this (for now)
  es3Safe: true,

  minifyCSS: {
    enabled: true,
    options: {}
  },

  getEnvJSON: require('./config/environment')
});

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.

app.import('vendor/ember-simple-auth/ember-simple-auth.js');
app.import('vendor/ember-simple-auth/ember-simple-auth-oauth2.js');
app.import('vendor/momentjs/moment.js');
app.import('vendor/epiceditor/epiceditor/js/epiceditor.js');
app.import('vendor/JavaScript-MD5/js/md5.js');

app.import('vendor/topcoat/css/topcoat-desktop-light.css');
// If the library that you are including contains AMD or ES6 modules that
// you would like to import into your application please specify an
// object with the list of modules as keys along with the exports of each
// module as its value.

app.import('vendor/topcoat-icons/svg/user.svg');

app.import({
  development: 'vendor/ember-data/ember-data.js',
  production:  'vendor/ember-data/ember-data.prod.js'
}, {
  'ember-data': [
    'default'
  ]
});

app.import('vendor/ic-ajax/dist/named-amd/main.js', {
  'ic-ajax': [
    'default',
    'defineFixture',
    'lookupFixture',
    'raw',
    'request',
  ]
});

var epicEditorAssets = pickFiles('vendor/epiceditor/epiceditor/themes', {
  srcDir: '/',
  files: ["base/epiceditor.css","editor/epic-light.css","preview/github.css"],
  destDir: 'assets/epiceditor/themes'
});

var topcoatFonts = pickFiles('vendor/topcoat', {
  srcDir: '/font',
  files: ['SourceSansPro-Semibold.otf', 'SourceSansPro-Regular.otf'],
  destDir: 'font'
});

module.exports = mergeTrees([app.toTree(), epicEditorAssets, topcoatFonts ]);
