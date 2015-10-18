NewRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'fields', {}
    controller.set 'showError', false

`export default NewRoute`