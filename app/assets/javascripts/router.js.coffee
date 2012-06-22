EmberApp.Router = Ember.Router.extend
  enableLogging: true
  
  root: Ember.Route.extend

    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'products'

    products: Ember.Route.extend
      route: '/products'

      showProduct: Ember.State.transitionTo("products.show")
      
      index: Ember.Route.extend
        route: "/"
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('productsList', EmberApp.Product.findAll())

      show: Ember.Route.extend
        route: '/:product_id'
        connectOutlets: (router, product) ->
          console.log "hi from connectOutlet"
          router.get('productsListController').connectOutlet('productShow', EmberApp.Product.find(product.get("id")))

EmberApp.initialize()
