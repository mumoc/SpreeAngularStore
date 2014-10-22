App.factory 'Products', ['$resource', ($resource) ->
  $resource '/api/products', {},
    query:
      params:
        token: '9f3ff141f6a2e7343b8fcf857829d1e7502bdca42feb03f0'
]
