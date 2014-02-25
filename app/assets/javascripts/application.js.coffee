#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require ember-simple-auth
#= require_self
#= require ember_sample_app

Ember.Application.initializer
  name: 'authentication',
  initialize: (container, application) ->
    Ember.SimpleAuth.setup(container, application)

# for more details see: http://emberjs.com/guides/application/
window.EmberSampleApp = Ember.Application.create()

$ ->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter (options, originalOptions, xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', token)
