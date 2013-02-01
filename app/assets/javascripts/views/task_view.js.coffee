if (typeof Fulcrum == 'undefined') {
  Fulcrum = {};
}

class Fulcrum.Views.Task extends Backbone.View
  template: JST['templates/task']
  tagName: 'div'
  className: 'task'

  events:
    "click a.check-task": "toggleTask"

  render: -> 
    this.$el.html(this.template({task: this.model}))
    this

  toggleTask: -> 
    this.model.destroy()
    this.$el.remove()
    false