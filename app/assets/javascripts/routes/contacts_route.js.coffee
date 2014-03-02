# For more information see: http://emberjs.com/guides/routing/

EmberSampleApp.ContactsRoute = Ember.Route.extend({
  model: ->
    @store.find('contact')

})
