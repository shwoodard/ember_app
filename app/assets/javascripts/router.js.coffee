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
          console.log "PRODUCT"
          console.log product
          console.log "products.show connectOutlets, product: #{product.get("title")}"
          #router.get('applicationController').connectOutlet('productShow', EmberApp.Product.findAll())

        #modelType: 'EmberApp.Product'
        #route: '/:product_id' #'/products/:product_id'
        #route: '/show'
        #'/products/:product_id'
          #router.get('productsListController').connectOutlet('productShow', product)

EmberApp.initialize()
