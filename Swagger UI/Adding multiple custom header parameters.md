Via [Swagger UI - Adding multiple custom header parameters](https://groups.google.com/forum/#!topic/swagger-swaggersocket/ibuoVSYi9dw)

To add header:

    var authorizationName = 'a name';
    var headerName = 'header_name';
    var headerValue = 'header value';
    var type = 'header';
    window.swaggerUi.api.clientAuthorizations.add(authorizationName, new SwaggerClient.ApiKeyAuthorization(headerName, headerValue, type));

Now requests will be called with:

    --header 'header_name: header value'
