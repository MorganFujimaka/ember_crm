`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: 'auto'
  rootURl: '/'

Router.map ->
  @route 'leads', path: '/', ->
    @route 'new', path: 'leads/new'
    @route 'lead', path: '/leads/:id', ->
      @route 'edit'

`export default Router`
