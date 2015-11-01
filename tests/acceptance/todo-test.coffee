`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from 'todo/tests/helpers/start-app'`

module 'Acceptance: Root',
  beforeEach: ->
    @application = startApp()
    ###
    Don't return anything, because QUnit looks for a .then
    that is present on Ember.Application, but is deprecated.
    ###
    return

  afterEach: ->
    Ember.run @application, 'destroy'

test 'visiting /', (assert) ->
  visit '/'

  andThen ->
    assert.equal currentURL(), '/'


test 'check the title', (assert) ->
  visit '/'

  andThen ->
    title = find('#title')
    assert.equal(title.text(), 'Todo application')

