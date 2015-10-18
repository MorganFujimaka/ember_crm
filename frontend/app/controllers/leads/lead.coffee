LeadController = Ember.Controller.extend
  isEditing: false
  showUnsavedMessage: ( ->
    @get('model.hasDirtyAttributes') and !@get('model.isSaving')
  ).property('model.hasDirtyAttributes', 'model.isSaving')

  actions:
    saveChanges: ->
      @get('model').save() if @get('model.hasDirtyAttributes')
    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'

`export default LeadController`