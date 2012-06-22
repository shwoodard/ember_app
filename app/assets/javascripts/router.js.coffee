EmberApp.Router = Ember.Router.extend
  enableLogging: true
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'products'
    products: Ember.Route.extend
      route: '/products'
      showProduct: Ember.State.transitionTo("products.show")
      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet('productsList', EmberApp.Product.findAll())
      show: Ember.Route.extend
        route: '/products/:product_id'
        connectOutlets: (router, product) ->
          router.get('productsListController').connectOutlet('productShow', product)

EmberApp.initialize()
