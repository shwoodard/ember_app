EmberApp.Product = DS.Model.extend()

EmberApp.Product.reopenClass
  findAll: ->
    EmberApp.store.findAll(EmberApp.Product)

EmberApp.ApplicationController = Ember.ArrayController.extend()
EmberApp.ProductsListController = Ember.ArrayController.extend()

EmberApp.ProductsListView = Ember.View.extend
  templateName: 'products/index'

EmberApp.ApplicationView = Ember.View.extend
  templateName: "application"
