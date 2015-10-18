LeadsRoute = Ember.Route.extend
  model: -> @store.findAll 'lead'

`export default LeadsRoute`