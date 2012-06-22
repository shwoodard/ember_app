EmberApp = Ember.Application.create()

EmberApp.router = Ember.Router.create
  enableLogging: true
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      connectOutlets: (router) ->

EmberApp.ApplicationController = Ember.ArrayController.extend()

EmberApp.ApplicationView = Ember.View.extend
  template: -> "awesome dude"

EmberApp.initialize(EmberApp.router)

