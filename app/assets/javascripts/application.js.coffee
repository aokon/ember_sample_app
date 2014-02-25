#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require ember_sample_app

# for more details see: http://emberjs.com/guides/application/
window.EmberSampleApp = Ember.Application.create()

$ ->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter (options, originalOptions, xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', token)
