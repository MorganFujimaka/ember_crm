LeadRoute = Ember.Route.extend
  model: (params) -> @store.findRecord 'lead', params.id

`export default LeadRoute`