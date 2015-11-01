`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'my-todo', 'Integration | Component | my todo', {
  integration: true
}


test 'it renders', (assert) ->


  model = {id: 0, title: 'First', content: 'Content'}

  @set('todo', model)

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """
    {{my-todo model=todo }}
  """

  assert.equal(@$('.todo-title').text().trim(), 'First')

