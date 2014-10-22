App.controller 'ProductsCtrl', ['$scope', 'Products', ($scope, Products) ->
  Products.query (data) ->
      $scope.products = data.products
]
