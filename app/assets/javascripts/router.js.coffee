# For more information see: http://emberjs.com/guides/routing/

EmberSampleApp.Router.map ()->
  # @resource('posts')
  @route 'login', path: "/login"
  @route 'dashboard', path: "/dashboard"

