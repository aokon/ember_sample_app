EmberSampleApp.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('dashboard')
  
