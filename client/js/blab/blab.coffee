buildMessage = (email, content) ->
  { email: email, content: content }

getUserEmail = ->
  Meteor.user().emails[0].address

Template.blab.helpers
  allMessages: -> Messages.find({})

Template.chat_box.events
  'submit #chat-box-form': (e, t) ->

    input = t.find('#message')
    message = input.value
    input.value = ""
    email = getUserEmail()

    Messages.insert(buildMessage(email, message))

    e.preventDefault()
    false