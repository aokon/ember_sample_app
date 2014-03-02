# for more details see: http://emberjs.com/guides/models/defining-models/

EmberSampleApp.Contact = DS.Model.extend
  first_name: DS.attr('string')
  last_name: DS.attr('string')
  full_name: DS.attr('string')
  city: DS.attr('string')
  country: DS.attr('string')
