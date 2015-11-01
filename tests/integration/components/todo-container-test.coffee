`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'todo-container', 'Integration | Component | todo container', {
  integration: true
}

test 'that it has todo-container class', (assert) ->

  @render hbs """
    {{todo-container}}
  """

  assert.equal @$('.todo-container').length, 1


test 'that it returns in yield the block param ', (assert) ->
  content = Ember.String.w('first')

  this.set('content', content)
  @render hbs """
    {{#todo-container model=content as |todo|}}
      {{todo}}
    {{/todo-container}}
  """

  assert.equal @$().text().trim(), 'first'
