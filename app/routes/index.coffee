`import Ember from 'ember'`

IndexRoute = Ember.Route.extend(
  model: ->

    [
      {id: 0, title: 'First', content: 'This is my first todo' },
      {id: 1, title: 'Second', content: 'This is my second todo' },
      {id: 2, title: 'Third', content: 'This is my third todo' }
    ]


)

`export default IndexRoute`
