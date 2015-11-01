`import Ember from 'ember'`

IndexRoute = Ember.Route.extend(

  model: ->
    @get('store').findAll('todo')


)

`export default IndexRoute`
