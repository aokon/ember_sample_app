# For more information see: http://emberjs.com/guides/routing/

EmberSampleApp.Router.map ->
  @resource "contacts", path: '/contacts', ->
    @route "new"

