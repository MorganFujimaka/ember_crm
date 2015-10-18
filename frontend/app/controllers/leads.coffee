LeadsController = Ember.Controller.extend
  sortProperties: ['firstName', 'lastName']
  sortedLeads: Ember.computed.sort('model', 'sortProperties')

  leads: ( ->
    if @get('search') then @get('searchedLeads') else @get('sortedLeads')
  ).property('search', 'sortedLeads', 'searchedLeads')

  searchedLeads: ( ->
    search = @get('search').toLowerCase()

    @get('sortedLeads').filter (lead) =>
      lead.get('fullName').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.fullName')

`export default LeadsController`