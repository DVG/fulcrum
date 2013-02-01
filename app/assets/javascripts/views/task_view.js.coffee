if (typeof Fulcrum == 'undefined') {
  Fulcrum = {};
}

Fulcrum.TaskView = Backbone.View.extend({
  template: JST['templates/task']
  tagName: 'div'
  className: 'task'

  events: {
    "click a.delete-note": "deleteNote"
  },

  render: -> 
    this.$el.html(this.template({note: this.model}))
    return this

  deleteNote: -> 
    this.model.destroy()
    this.$el.remove()
    return false