App.factory 'Products', ['$resource', ($resource) ->
  $resource '/api/products', {},
    query:
      params:
        #I,m not 100% sure about this, but, wouldn't you need to use your current user token? or app token? If so,
        #why do you have it hardcoded here? 
        #If you need to pass variables to js, you could do it in the layout or a view, creating an instance of an object
        #o passing directly to your angular.app ... there are many ways to do it
        token: '9f3ff141f6a2e7343b8fcf857829d1e7502bdca42feb03f0'
]
