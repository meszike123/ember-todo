`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from 'todo/tests/helpers/start-app'`

module 'Acceptance: Index',
  beforeEach: ->
    @application = startApp()
    ###
    Don't return anything, because QUnit looks for a .then
    that is present on Ember.Application, but is deprecated.
    ###
    return

  afterEach: ->
    Ember.run @application, 'destroy'

test 'find todo container', (assert) ->
  visit '/'

  andThen ->

    container = find('.todo-container')
    assert.equal(container.length, 1)


test 'find todos', (assert) ->
  visit '/'

  andThen ->

    todos = find('.todo-container .todo')
    assert.equal(todos.length, 3)


test 'check first tod title', (assert) ->
  visit '/'

  andThen ->

    first = find('.todo-container .todo:eq(0) .todo-title')
    assert.equal(first.text(), "First")



test 'find todos', (assert) ->
  visit '/'

  andThen ->

    third = find('.todo-container .todo:eq(2) .todo-content')
    assert.equal(third.text(), "This is my third todo")
