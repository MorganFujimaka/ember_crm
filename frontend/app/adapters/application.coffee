`import ActiveModelAdapter from 'active-model-adapter'`
`import config from '../config/environment'`

ApplicationAdapter = ActiveModelAdapter.extend
  namespace: 'api/v1'
  host: config.API_HOST

  $ ->
    token = $('meta[name=csrf-token]').attr('content')
    $.ajaxPrefilter (options, originalOptions, xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', token)

`export default ApplicationAdapter`
