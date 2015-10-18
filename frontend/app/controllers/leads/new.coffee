NewController = Ember.Controller.extend
  valid: (fields) ->
    fields.firstName and fields.lastName

  actions:
    createLead: ->
      fields = @get('fields')

      if @valid(fields)
        lead = @store.createRecord 'lead', fields

        lead.save().then =>
          @transitionToRoute 'leads.lead', lead
      else
        @set('showError', true) and false

`export default NewController`