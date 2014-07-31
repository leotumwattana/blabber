Router.map ->
  @route 'login', { path: '/' }
  @route 'registration'
  @route 'blab'

autoLogin = (pause) ->
  Router.go 'blab' if Meteor.userId()

requireLogin = (pause) ->
  Router.go 'login' unless Meteor.userId()

Router.onBeforeAction autoLogin,
  only: ['login', 'registration']

Router.onBeforeAction requireLogin,
  only: 'blab'