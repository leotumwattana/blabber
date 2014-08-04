Template.navbar.events

  'click #logout': (e) ->
    Meteor.logout()
    e.preventDefault()
    false

  'click #reset': (e) ->
    Meteor.call('clearBlabs')

Template.navbar.helpers
  title: -> Session.get('nickname')