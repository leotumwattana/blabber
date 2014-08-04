Meteor.publish "messages", (options) ->
  Messages.find({}, fields: { email: 1, content: 1 })
