LeadEditRoute = Ember.Route.extend
  activate:   -> @controllerFor('leads.lead').set 'isEditing', true
  deactivate: -> @controllerFor('leads.lead').set 'isEditing', false

`export default LeadEditRoute`