EmberApp.Product = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')

EmberApp.Product.reopenClass
  findAll: ->
    EmberApp.store.findAll(EmberApp.Product)

EmberApp.ApplicationController = Ember.ArrayController.extend()
EmberApp.ProductsListController = Ember.ArrayController.extend()
#EmberApp.ProductShowController = Ember.ObjectController.extend()

#EmberApp.ProductShowView = Ember.View.extend
#  templateName: 'products/show'

EmberApp.ProductsListView = Ember.View.extend
  templateName: 'products/index'

EmberApp.ApplicationView = Ember.View.extend
  templateName: "application"
