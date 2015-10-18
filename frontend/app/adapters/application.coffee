`import ActiveModelAdapter from 'active-model-adapter'`

ApplicationAdapter = ActiveModelAdapter.extend
  namespace: 'api/v1'
  host: 'http://localhost:3000'

  $ ->
    token = $('meta[name=csrf-token]').attr('content')
    $.ajaxPrefilter (options, originalOptions, xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', token)

`export default ApplicationAdapter`
