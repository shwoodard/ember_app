EmberApp.Router = Ember.Router.extend
  enableLogging: true
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'products'
    products: Ember.Route.extend
      route: '/products'
      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet('productsList', EmberApp.Product.findAll())

EmberApp.initialize()
