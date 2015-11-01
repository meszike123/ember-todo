`import DS from 'ember-data'`

Todo = DS.Model.extend {
  title: DS.attr('string', {defaultValue: ''})
  content: DS.attr('string', {defaultValue: ''})
}

`export default Todo`
