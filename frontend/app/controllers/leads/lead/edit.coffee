EditController = Ember.Controller.extend
  actions:
    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'leads.lead'

    cancel: ->
      @get('model').rollbackAttributes()
      @transitionToRoute 'leads.lead'

`export default EditController`