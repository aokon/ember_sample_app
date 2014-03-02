# http://emberjs.com/guides/models/using-the-store/

DS.ActiveModelAdapter.reopen({
  namespace: 'api/v1'
  #temporary solution see https://github.com/emberjs/ember-rails/pull/340
  headers:
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
})

EmberSampleApp.Store = DS.Store.extend
  # Override the default adapter with the `DS.ActiveModelAdapter` which
  # is built to work nicely with the ActiveModel::Serializers gem.
  adapter: '-active-model'

