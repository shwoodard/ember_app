EmberApp = Ember.Application.create()

EmberApp.router = Ember.Router.create
  enableLogging: true
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet('productsList')

EmberApp.ApplicationController = Ember.ArrayController.extend()
EmberApp.ProductsListController = Ember.ArrayController.extend()

EmberApp.ProductsListView = Ember.View.extend
  templateName: 'products/index'

EmberApp.ApplicationView = Ember.View.extend
  templateName: "application"

EmberApp.initialize(EmberApp.router)

